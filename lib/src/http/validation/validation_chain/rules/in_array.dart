import 'package:vania/src/http/validation/validation_chain/validation_rule.dart';

class InArray<T> extends ValidationRule {
  final List<T> array;
  InArray(super.customErrorMessage, this.array);

  @override
  bool validate(value) {
    return array.contains(value.toString());
  }

  @override
  String getDefaultErrorMessage(String field) {
    return 'The $field field have to a part of ${array.toString()}';
  }
}
