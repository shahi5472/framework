extension NumberExtension on num {
  /// Rounds the number to a fixed number of decimal places.
  ///
  /// This method rounds the calling number to the specified number of decimal places
  /// and returns it as a `num`. If the number is an integer, it will return the same integer
  /// if `decimal` is zero; otherwise, it will return a decimal with the specified number of places.
  ///
  /// **Parameters:**
  /// - [decimal]: The number of decimal places to round the number to. This must be a non-negative integer.
  ///
  /// **Returns:**
  /// A new number rounded to the specified number of decimal places.
  ///
  /// **Example Usage:**
  /// ```dart
  /// var number = 123.4567;
  /// var rounded = number.toFixed(2);
  /// print(rounded); // Outputs: 123.46
  ///
  /// var integer = 123;
  /// var roundedInt = integer.toFixed(0);
  /// print(roundedInt); // Outputs: 123
  ///
  /// var negative = -123.456;
  /// var roundedNeg = negative.toFixed(3);
  /// print(roundedNeg); // Outputs: -123.456
  /// ```
  ///
  /// **Note:**
  /// The method uses `toStringAsFixed` and `num.parse` to perform the rounding, which means
  /// the method handles rounding similarly to how JavaScript handles number rounding.
  num toFixed(int decimal) {
    return num.parse(toStringAsFixed(decimal));
  }
}
