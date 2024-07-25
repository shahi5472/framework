import 'package:vania/src/http/validation/validation_chain/validation_rule.dart';

class NotInArray<T> extends ValidationRule {
  final List<T> array;
  NotInArray(super.customErrorMessage, this.array);

  @override
  bool validate(value) {
    return !array.contains(value.toString());
  }

  @override
  String getDefaultErrorMessage(String field) {
    return 'The $field field cannot be in ${array.toString()}';
  }
}
