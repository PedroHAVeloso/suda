import 'dart:html';

import 'package:deact/deact.dart';
import 'package:deact/deact_html52.dart';
import 'package:suda_website/view/style/color.dart';

DeactNode primaryButtonWidget(
  String text, {
  void Function(MouseEvent)? onClick,
}) {
  return button(
    className: 'bg-$color-900 hover:bg-$color-800 transition duration-500 '
        'text-$color-100 rounded-xl px-4 py-2',
    onclick: onClick,
    children: [
      txt(text),
    ],
  );
}
