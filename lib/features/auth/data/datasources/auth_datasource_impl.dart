import 'package:doe/features/auth/data/datasources/auth_datasource.dart';
import 'package:doe/features/auth/data/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthDatasourceImplementation implements IAuthDataSource{
  @override
  Future<UserModel> signInWithEmailAndPassword({required String email, required String password}) async{
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    return UserModel.fromFirebaseAuthUser(credential.user!);
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<UserModel> signUpWithEmailAndPassword({required String email, required String password}) {
    // TODO: implement signUpWithEmailAndPassword
    throw UnimplementedError();
  }
}