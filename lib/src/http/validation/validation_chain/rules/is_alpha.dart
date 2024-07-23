import 'package:vania/src/http/validation/validation_chain/validation_rule.dart';

class IsAlpha extends ValidationRule {
  IsAlpha(super.customErrorMessage);

  @override
  bool validate(value) {
    return value is String && RegExp(r'^[a-zA-Z]+$').hasMatch(value);
  }

  @override
  String getDefaultErrorMessage(String field) {
    return 'The $field must contains just alphabet words';
  }
}