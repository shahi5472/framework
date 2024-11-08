import 'package:vania/src/localization_handler/localization.dart';

extension LanguageExtension on String {
  String trans([Map<String, dynamic>? args]) {
    return Localization().trans(this, args);
  }
}
