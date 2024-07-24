import 'package:vania/src/http/validation/validation_chain/validation_rule.dart';

class MaxLength extends ValidationRule {
  int maxLength;
  MaxLength(
    super.customErrorMessage,
    this.maxLength,
  );

  @override
  bool validate(value) {
    value = value.toString().length;
    return value.toString().length <= maxLength;
  }

  @override
  String getDefaultErrorMessage(String field) {
    return 'The {field} should not be greater than $maxLength character';
  }
}
