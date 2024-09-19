import 'package:dartz/dartz.dart';
import 'package:doe/core/errors/failure.dart';
import 'package:doe/core/usecase/usecase.dart';
import 'package:doe/features/auth/domain/entity/user_entity.dart';
import 'package:doe/features/auth/domain/repository/auth_repository.dart';
import 'package:doe/features/auth/domain/vos/email.dart';
import 'package:doe/features/auth/domain/vos/password.dart';

class SignUpUsecase implements Usecase<UserEntity, SignUpParams> {
  final IAuthRepository repository;

  SignUpUsecase(this.repository);

  @override
  Future<Either<Failure, UserEntity>> call(SignUpParams params) async{
    return await repository.signUp(
      email: params.email.toString(),
      password: params.password.toString(),
    );
  }
}

class SignUpParams {
  final Email email;
  final Password password;

  SignUpParams({
    required this.email,
    required this.password,
  });
}
