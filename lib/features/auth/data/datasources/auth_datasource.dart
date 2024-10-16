import 'package:doe/features/auth/data/model/user_model.dart';

abstract interface class IAuthDataSource {
  
  Future<UserModel> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<UserModel> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> signOut();
}