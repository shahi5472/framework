abstract class ValidationRule {
  final String errorMessage;
  ValidationRule(this.errorMessage);
  bool validate(dynamic value);
}
