import 'package:doe/core/vos/value_object.dart';

class Password extends ValueObject<String>{

  Password({required super.value});
 
  @override
  String? validate() {
    if (value.length < 7) {
      return 'A senha não pode ter menos de 8 caracteres';
    } else{
      return null;
    }
  }

  @override
  String toString() {
    return value.toString();
  }
}