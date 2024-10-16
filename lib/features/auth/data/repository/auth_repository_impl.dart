import 'package:dartz/dartz.dart';
import 'package:doe/core/errors/exceptions.dart';
import 'package:doe/core/errors/failures.dart';
import 'package:doe/features/auth/data/datasources/auth_datasource.dart';
import 'package:doe/features/auth/domain/entity/user_entity.dart';
import 'package:doe/features/auth/domain/repository/auth_repository.dart';
import 'package:doe/features/auth/domain/errors/user_not_found.dart';
import 'package:doe/features/auth/domain/errors/wrong_password.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepositoryImplementation implements IAuthRepository{

  final IAuthDataSource datasource;

  AuthRepositoryImplementation(this.datasource);

  @override
  Future<Either<Failure, UserEntity>> signIn({required String email, required String password}) async {
    try{
      final result = await datasource.signInWithEmailAndPassword(email: email, password: password);
      return Right(result);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return Left(UserNotFound());
      } else if (e.code == 'wrong-password') {
        return Left(WrongPassword());
      }else{
        return Left(ServerFailure());
      }
    }
  }

  @override
  Future<void> signOut() async{
    await datasource.signOut();
  }

  @override
  Future<Either<Failure, UserEntity>> signUp({required String email, required String password}) async{
    try{
      final result = await datasource.signUpWithEmailAndPassword(email: email, password: password);
      return Right(result);
    } on ServerException{
      return Left(ServerFailure());
    } 
  }
}