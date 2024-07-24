import 'package:vania/src/config/defined_regexp.dart';
import 'package:vania/src/http/validation/validation_chain/validation_rule.dart';

class IsUUID extends ValidationRule {
  IsUUID(
    super.customErrorMessage,
  );

  @override
  bool validate(value) {
    return uuidRegExp.hasMatch(value.toString());
  }

  @override
  String getDefaultErrorMessage(String field) {
    return 'The {field} must be a valid UUID';
  }
}
