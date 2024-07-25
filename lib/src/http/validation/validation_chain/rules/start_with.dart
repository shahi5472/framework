import 'package:vania/src/http/validation/validation_chain/validation_rule.dart';

class StartWith extends ValidationRule {
  final String start;
  StartWith(super.customErrorMessage, this.start);

  @override
  bool validate(value) {
    return value.toString().startsWith(start.toString());
  }

  @override
  String getDefaultErrorMessage(String field) {
    return 'The $field must start with $start';
  }
}
