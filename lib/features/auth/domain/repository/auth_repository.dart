import 'package:dartz/dartz.dart';
import 'package:doe/core/errors/failures.dart';
import 'package:doe/features/auth/domain/entity/user_entity.dart';

abstract interface class IAuthRepository {

  Future<Either<Failure, UserEntity>> signUp({
    required String email,
    required String password,
  });

  Future<Either<Failure, UserEntity>> signIn({
    required String email,
    required String password,
  });

  Future<void> signOut();
}