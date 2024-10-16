import 'package:doe/features/auth/domain/entity/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
// ignore: must_be_immutable
class UserModel extends UserEntity {

  UserModel({
    required super.id,
    required super.email,
    required super.password,
    required super.name,
    required super.photoURL,
  });

  factory UserModel.fromFirebaseAuthUser(firebase_auth.User firebaseUser) {
    return UserModel(
      id: firebaseUser.uid,
      email: firebaseUser.email ?? '',
      name: firebaseUser.displayName!,
      photoURL: firebaseUser.photoURL!, 
      password: '',
    );
  }
}
