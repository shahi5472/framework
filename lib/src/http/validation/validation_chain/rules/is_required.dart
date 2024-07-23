
import 'package:vania/src/http/validation/validation_chain/validation_rule.dart';

class IsRequired extends ValidationRule {
  IsRequired(super.errorMessage);

  @override
  bool validate(dynamic value) {
    return value != null && value.toString().isNotEmpty;
  }
}
