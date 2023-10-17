import 'package:deact/deact.dart';
import 'package:deact/deact_html52.dart';
import 'package:suda_website/style/color.dart';
import 'package:suda_website/view/pages/home_page.dart';

DeactNode app() {
  return div(
    id: 'app',
    className: 'p-2 text-$color-900',
    children: [
      homePage(),
    ],
  );
}
