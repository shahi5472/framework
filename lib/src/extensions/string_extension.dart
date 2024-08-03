extension StringExtension on String {
  /// Converts a string to an integer.
  ///
  /// Attempts to parse the string as an integer using `int.tryParse`. If the string
  /// cannot be parsed into an integer (e.g., because it contains letters or special characters),
  /// this method returns `null`.
  ///
  /// **Examples:**
  /// - For a valid integer string:
  /// ```dart
  /// var number = '123'.toInt(); // 123
  /// ```
  /// - For a string containing non-digit characters:
  /// ```dart
  /// var number = '123abc'.toInt(); // null
  /// ```
  /// - For a string representing a floating-point number:
  /// ```dart
  /// var number = '123.45'.toInt(); // null
  /// ```
  /// - For an empty string:
  /// ```dart
  /// var number = ''.toInt(); // null
  /// ```
  ///
  /// **Parameters:**
  /// None.
  ///
  /// **Returns:**
  int? toInt() {
    return int.tryParse(this);
  }
}
