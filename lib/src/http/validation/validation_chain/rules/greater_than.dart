import 'package:vania/src/http/validation/validation_chain/validation_rule.dart';

class GreaterThan extends ValidationRule {
  final num compare;
  GreaterThan(super.customErrorMessage, this.compare);
  @override
  bool validate(value) {
    value = num.parse(value.toString());
    return value > num.parse(compare.toString());
  }

  @override
  String getDefaultErrorMessage(String field) {
    return 'The $field be greater than $compare';
  }
}
