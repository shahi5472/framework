import 'package:vania/src/http/validation/validation_chain/validation_rule.dart';

class IsString extends ValidationRule {
  IsString(super.errorMessage);

  @override
  bool validate(value) {
    return value != null && value is String;
  }
}
