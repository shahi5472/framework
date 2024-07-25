import 'package:vania/src/http/validation/validation_chain/validation_rule.dart';
import 'package:vania/vania.dart';

class IsFile extends ValidationRule {
  final String args;
  IsFile(String super.customErrorMessage, this.args);

  @override
  bool validate(value) {
    if (value is! RequestFile && value is! List<RequestFile>) {
      return false;
    }

    if (args.isEmpty) {
      return true;
    }

    List<String> validExtensions = args.split(',');

    bool hasValidExtension(RequestFile file) {
      return validExtensions.contains(file.extension);
    }

    if (value is List<RequestFile>) {
      return value.every(hasValidExtension);
    } else {
      return hasValidExtension(value);
    }
  }

  @override
  String getDefaultErrorMessage(String field) {
    return 'The $field must be a file';
  }
}
