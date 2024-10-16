import 'package:doe/features/auth/domain/vos/email.dart';
import 'package:doe/features/auth/domain/vos/password.dart';
import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class UserEntity extends Equatable {
  final String id;
  final String name;
  final String photoURL;
  Email _email;
  Password _password;

  UserEntity({
    required this.id,
    required String email,
    required String password,
    required this.name,
    required this.photoURL,
  })  : _email = Email(value: email),
        _password = Password(value: password);

  Email get email => _email;
  void setEmail(value) => _email = Email(value: value.toString());

  Password get password => _password;
  void setPassword(value) => _password = Password(value: value.toString());

  @override
  List<Object?> get props => throw UnimplementedError();

  factory UserEntity.empty() {
    return UserEntity(
      id: '',
      email: '',
      password: '',
      name: '',
      photoURL: '',
    );
  }
}
