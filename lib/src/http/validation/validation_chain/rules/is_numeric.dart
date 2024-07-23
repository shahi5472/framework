import 'package:vania/src/http/validation/validation_chain/validation_rule.dart';

class IsNumeric extends ValidationRule {
  IsNumeric(String super.errorMessage);

  @override
  String getDefaultErrorMessage(String field) {
    return 'The $field must be a number';
  }

  @override
  bool validate(value) {
    try {
      num.parse(value.toString());
      return true;
    } catch (_) {
      return false;
    }
  }
}
