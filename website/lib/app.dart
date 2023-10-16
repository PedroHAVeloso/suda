import 'package:deact/deact.dart';
import 'package:deact/deact_html52.dart';
import 'package:suda_website/style/color.dart';

DeactNode app() {
  return div(
    id: 'app',
    className: 'p-2 text-$color-900',
    children: [
      header(
        className:
            'w-full px-4 py-2 items-center rounded-xl bg-$color-100 flex gap-4',
        children: [
          h1(
            className: 'text-3xl font-bold',
            children: [
              txt('SUDA'),
            ],
          ),
          h2(
            children: [
              txt('Sistema Universal de Defesa Apocalíptico'),
            ],
          ),
        ],
      ),
      main(
        children: [
          button(children: [txt('')]),
        ],
      ),
    ],
  );
}
