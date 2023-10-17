import 'package:deact/deact.dart';
import 'package:deact/deact_html52.dart';

DeactNode secondaryButtonWidget(String text) {
  return button(
    children: [
      txt(text),
    ],
  );
}
