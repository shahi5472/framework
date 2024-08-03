extension DateTimeExtension on DateTime {
  /// Converts a DateTime object to a string formatted according to AWS datetime standards.
  ///
  /// This method formats the DateTime object into a compact string suitable for AWS services,
  /// such as those requiring a timestamp in ISO 8601 format but without hyphens, colons,
  /// or spaces. It ends with a 'Z' to indicate Zulu time (UTC).
  ///
  /// **Returns:**
  /// A string representing the DateTime in AWS format: `YYYYMMDDTHHMMSSZ`
  ///
  /// **Example Usage:**
  /// ```dart
  /// var now = DateTime.now();
  /// var awsFormatted = now.toAwsFormat();
  /// print(awsFormatted); // Outputs: '20230803T142530Z' (varies based on current time)
  /// ```
  String toAwsFormat() {
    String zeroPad(int number) => number.toString().padLeft(2, '0');

    return '${zeroPad(year)}${zeroPad(month)}${zeroPad(day)}T'
        '${zeroPad(hour)}${zeroPad(minute)}${zeroPad(second)}Z';
  }

  /// Formats a DateTime object into a human-readable string.
  ///
  /// This method converts the DateTime object into a standard datetime string format
  /// commonly used in various systems for displaying date and time.
  ///
  /// **Returns:**
  /// A string in the format `YYYY-MM-DD HH:MM:SS`, which is more readable than the compact AWS format.
  ///
  /// **Example Usage:**
  /// ```dart
  /// var now = DateTime.now();
  /// var formatted = now.format();
  /// print(formatted); // Outputs: '2023-08-03 14:25:30' (varies based on current time)
  /// ```
  String format() {
    return '${year.toString().padLeft(4, '0')}-'
        '${month.toString().padLeft(2, '0')}-'
        '${day.toString().padLeft(2, '0')} '
        '${hour.toString().padLeft(2, '0')}:'
        '${minute.toString().padLeft(2, '0')}:'
        '${second.toString().padLeft(2, '0')}';
  }
}
