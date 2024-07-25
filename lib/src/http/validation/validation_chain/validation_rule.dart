abstract class ValidationRule {
  final String? customErrorMessage;
  ValidationRule(this.customErrorMessage);
  bool validate(dynamic value);
  String get errorMessage => customErrorMessage ?? getDefaultErrorMessage('');
  String getDefaultErrorMessage(String field);
}
