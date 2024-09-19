import 'package:doe/features/auth/domain/vos/email.dart';
import 'package:doe/features/auth/domain/vos/password.dart';
import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class UserEntity extends Equatable {
  Email _email;
  Password _password;

  UserEntity({
    required String email,
    required String password,
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
      email: '',
      password: '',
    );
  }
}
