import 'package:deact/deact.dart';
import 'package:suda_website/app.dart';

void main() {
  deact(
    '#root',
    (_) => app(),
  );
}
