import 'package:vania/src/language_handler/language.dart';

extension LanguageExtension on String {
  String trans([Map<String, dynamic>? args]) {
    return Language().trans(this, args);
  }
}
