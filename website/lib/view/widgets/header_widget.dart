import 'package:deact/deact.dart';
import 'package:deact/deact_html52.dart';
import 'package:suda_website/view/style/color.dart';

DeactNode headerWidget() {
  return header(
    className:
        'w-full py-2 px-4 items-center rounded-xl bg-$color-100 flex gap-4',
    children: [
      span(
        className: 'flex gap-1 w-full sm:w-fit',
        children: [
          img(src: 'favicon.svg', alt: 'Logo', className: 'h-10'),
          h1(
            className: 'text-3xl font-bold',
            children: [
              txt('SUDA'),
            ],
          ),
        ],
      ),
      h2(
        className: 'w-full sm:w-fit',
        children: [
          txt('Sistema Universal de Defesa Apocalíptico'),
        ],
      ),
    ],
  );
}
