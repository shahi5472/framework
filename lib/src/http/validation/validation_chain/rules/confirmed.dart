import 'package:vania/src/http/validation/validation_chain/validation_rule.dart';

class Confirmed extends ValidationRule {
  final String key;
  final Map<String, dynamic> data;
  Confirmed(super.customErrorMessage, this.data, this.key);

  @override
  bool validate(value) {
    final reformedKey = key.toString().isEmpty ? 'password_confirmation' : key;
    dynamic confirmValue = data[reformedKey];
    return confirmValue == value;
  }

  @override
  String getDefaultErrorMessage(String field) {
    return 'Both passwords should match';
  }
}
