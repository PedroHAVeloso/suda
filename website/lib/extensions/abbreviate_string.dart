extension Abbreviate on String {
  /// Abrevia a `String` em que for usada para o número máximo definido
  /// [maxLength].
  String abbreviate(int maxLength) {
    if (length <= maxLength) return this;
    return '${substring(0, maxLength - 2)}...';
  }
}
