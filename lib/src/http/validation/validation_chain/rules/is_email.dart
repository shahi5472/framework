import 'package:vania/src/http/validation/validation_chain/validation_rule.dart';

class IsEmail extends ValidationRule {
  IsEmail(super.errorMessage);

  @override
  bool validate(dynamic value) {
    if (value == null) return false;
    return RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
        .hasMatch(value.toString());
  }

  @override
  String getDefaultErrorMessage(String field) {
    return 'The $field must be a valid email';
  }
}
