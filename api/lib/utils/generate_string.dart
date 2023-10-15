import 'dart:math';

String generateString(int maxLen) {
  final random = Random();

  const chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';

  return List.generate(maxLen, (index) => chars[random.nextInt(chars.length)])
      .join();
}
