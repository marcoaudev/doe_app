import 'package:doe/core/vos/value_object.dart';

class Email extends ValueObject<String>{

  Email({required super.value});
 
  @override
  String? validate() {
    if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value)) {
           return 'Digite o email corretamente';
        }
    return null;
  }

  @override
  String toString() {
    return value.toString();
  }

}