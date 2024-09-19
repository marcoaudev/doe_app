import 'package:dartz/dartz.dart';
import 'package:doe/core/errors/failure.dart';
import 'package:doe/core/usecase/usecase.dart';
import 'package:doe/features/auth/domain/entity/user_entity.dart';
import 'package:doe/features/auth/domain/repository/auth_repository.dart';
import 'package:doe/features/auth/domain/vos/email.dart';
import 'package:doe/features/auth/domain/vos/password.dart';

class SingInUsecase implements Usecase<UserEntity, SignInParams> {
  final IAuthRepository repository;

  SingInUsecase(this.repository);

  @override
  Future<Either<Failure, UserEntity>> call(SignInParams params) async{
    return await repository.signIn(
      email: params.email.toString(),
      password: params.password.toString(),
    );
  }
}

class SignInParams {
  final Email email;
  final Password password;

  SignInParams({
    required this.email,
    required this.password,
  });
}
