import 'package:vania/src/http/validation/validation_chain/validation_rule.dart';

class EndWith extends ValidationRule {
  final String end;
  EndWith(super.customErrorMessage, this.end);

  @override
  bool validate(value) {
    return value.toString().endsWith(end.toString());
  }

  @override
  String getDefaultErrorMessage(String field) {
    return 'The $field must end with $end';
  }
}
