import 'package:formz/formz.dart';

enum UsernameValidationError { empty }

class Username extends FormzInput<String, UsernameValidationError>{
  const Username.pure() :  super.dirty('');
  const Username.dirty([super.value = '']) : super.dirty();

  @override
  UsernameValidationError? validator(String? value) {
    return value?.isNotEmpty == true ? null : UsernameValidationError.empty;
  }
}
