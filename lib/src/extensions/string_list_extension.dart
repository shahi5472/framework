extension StringListExtension on List<String> {
  String joinWithAnd([String separator = ', ', String lastJoinText = 'and']) {
    if (isEmpty) return '';
    if (length == 1) return first;
    if (length == 2) return '$first $lastJoinText $last';

    // Join all elements except the last with the separator, and append the last
    // element with the specified last join text.
    return '${sublist(0, length - 1).join(separator)} $lastJoinText $last';
  }
}
