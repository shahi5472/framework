extension StringListExtension on List<String> {
  /// Joins a list of strings into a single string with a custom separator and a final conjunction word.
  ///
  /// This method concatenates each element of the list into a string, separated by [separator],
  /// and uses [lastJoinText] before the final element to format the output naturally in English.
  ///
  /// **Examples:**
  /// - For an empty list: returns an empty string.
  /// - For a list with two elements: returns the two elements separated by [lastJoinText].
  /// - For a list with more than two elements: returns all elements separated by [separator] and
  ///   the last two elements are joined with [lastJoinText].
  ///
  /// **Code Examples:**
  /// ```dart
  /// var value = [].joinWithAnd(); // ''
  /// value = ['apple'].joinWithAnd(); // 'apple'
  /// value = ['apple', 'orange'].joinWithAnd(); // 'apple and orange'
  /// value = ['apple', 'orange', 'banana'].joinWithAnd(); // 'apple, orange and banana'
  /// ```
  /// Parameters:
  /// - [separator] (optional): the string to use between each element except before the last element. Defaults to ', '.
  /// - [lastJoinText] (optional): the string to use before the last element. Defaults to 'and'.
  ///
  /// Returns:
  /// The concatenated string of the list elements formatted according to the rules described.

  String joinWithAnd([String separator = ', ', String lastJoinText = 'and']) {
    if (isEmpty) return '';
    if (length == 1) return first;
    if (length == 2) return '$first $lastJoinText $last';
    return '${sublist(0, length - 1).join(separator)} $lastJoinText $last';
  }
}
