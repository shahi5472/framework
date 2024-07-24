import 'package:vania/src/http/validation/validation_chain/validation_rule.dart';

class Between extends ValidationRule {
  final num lowerBoundary;
  final num higherBoundary;
  Between(super.customErrorMessage, this.lowerBoundary, this.higherBoundary);

  @override
  bool validate(value) {
    value = num.parse(value.toString());
    return value >= lowerBoundary && value <= higherBoundary;
  }

  @override
  String getDefaultErrorMessage(String field) {
    return 'The $field should be between $lowerBoundary and $higherBoundary';
  }
}
