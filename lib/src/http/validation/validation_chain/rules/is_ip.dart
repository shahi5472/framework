import 'package:vania/src/http/validation/validation_chain/validation_rule.dart';

class IsIp extends ValidationRule {
  IsIp(String super.errorMessage);

  @override
  bool validate(value) {
    RegExp ipAddressRegex = RegExp(
      r'^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$',
    );
    return ipAddressRegex.hasMatch(value.toString());
  }

  @override
  String getDefaultErrorMessage(String field) {
    return 'The $field must be a valid IP address';
  }
}
