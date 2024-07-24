import 'package:vania/src/http/validation/validation_chain/validation_rule.dart';

class Max extends ValidationRule {
  final num maxValue;
  Max(super.customErrorMessage, this.maxValue);

  @override
  bool validate(value) {
    value = num.parse(value.toString());
    return value <= num.parse(maxValue.toString());
  }

  @override
  String getDefaultErrorMessage(String field) {
    return 'The $field must be less than or equal $maxValue';
  }
}
