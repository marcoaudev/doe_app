import 'package:dartz/dartz.dart';
import 'package:doe/core/errors/failures.dart';
import 'package:doe/core/usecase/usecase.dart';
import 'package:doe/features/auth/domain/entity/user_entity.dart';
import 'package:doe/features/auth/domain/repository/auth_repository.dart';
import 'package:doe/features/auth/domain/vos/email.dart';
import 'package:doe/features/auth/domain/vos/password.dart';

class SignInUsecase implements Usecase<UserEntity, Map> {
  final IAuthRepository repository;

  SignInUsecase(this.repository);

  @override
  Future<Either<Failure, UserEntity>> call(Map params) async{
    return await repository.signIn(
      email: params['email'],
      password: params['password'],
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
