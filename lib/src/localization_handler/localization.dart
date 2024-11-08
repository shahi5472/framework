import 'dart:convert';
import 'dart:io';

import 'package:vania/src/utils/helper.dart';

class Localization {
  static final Localization _singleton = Localization._internal();
  factory Localization() {
    return _singleton;
  }
  Localization._internal();

  final Map<String, dynamic> _language = {};

  /// Initializes the language data by loading all `.json` language files from `lib\lang` directory.
  /// - `LANG_PATH` specifies the directory where the language files are stored (defaults to `lib\\lang\\` if not set).
  /// - `LOCALE` specifies the language/locale to load (defaults to `en` if not set).
  void init() async {
    String locale = env('LOCALE', 'en');
    String languagePath = env('LANG_PATH', 'lib\\lang\\');
    Directory directory = Directory('$languagePath$locale');
    List<FileSystemEntity> pathList =
        directory.listSync(recursive: true, followLinks: false);

    for (FileSystemEntity item in pathList) {
      if (item is File && item.path.endsWith('.json')) {
        String data = item.readAsStringSync();
        try {
          _language.addAll(jsonDecode(data));
        } catch (_) {}
      }
    }
  }

  /// Translates a string based on the provided key and optional arguments.
  String trans(String key, [Map<String, dynamic>? args]) {
    if (!_language.containsKey(key)) {
      return 'Translation not found for key: $key';
    }

    String tmp = _language[key];

    if (args == null || args.isEmpty) {
      return tmp;
    }

    args.forEach((placeholder, value) {
      tmp = tmp.replaceAll('{$placeholder}', value.toString());
    });

    return tmp;
  }
}
