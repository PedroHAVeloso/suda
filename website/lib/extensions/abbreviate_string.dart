extension Abbreviate on String {
  String abbreviate(int maxLength) {
    if (length <= maxLength) return this;
    return '${substring(0, maxLength - 2)}...';
  }
}
