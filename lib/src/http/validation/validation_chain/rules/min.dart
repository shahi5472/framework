import 'package:vania/src/http/validation/validation_chain/validation_rule.dart';

class Min extends ValidationRule {
  final num minValue;
  Min(super.customErrorMessage, this.minValue);

  @override
  bool validate(value) {
    value = num.parse(value.toString());
    return value >= num.parse(minValue.toString());
  }

  @override
  String getDefaultErrorMessage(String field) {
    return 'The $field be greater than or equal $minValue';
  }
}
