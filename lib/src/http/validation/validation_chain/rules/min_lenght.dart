import 'package:vania/src/http/validation/validation_chain/validation_rule.dart';

class MinLength extends ValidationRule {
  int minLength;
  MinLength(
    super.customErrorMessage,
    this.minLength,
  );

  @override
  bool validate(value) {
    value = value.toString().length;
    return value.toString().length >= minLength;
  }

  @override
  String getDefaultErrorMessage(String field) {
    return 'The {field} should not be less than $minLength character';
  }
}
