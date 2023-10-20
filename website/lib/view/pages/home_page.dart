import 'package:deact/deact.dart';
import 'package:deact/deact_html52.dart';
import 'package:suda_website/view/style/color.dart';
import 'package:suda_website/view/widgets/header_widget.dart';
import 'package:suda_website/view/widgets/option_buttons_widget.dart';

DeactNode homePage() {
  return div(
    id: 'home-page',
    className: 'p-2 text-$color-900 flex flex-col gap-2 h-full',
    children: [
      headerWidget(),
      main(
        children: [
          article(
            className: 'p-2 bg-$color-100 rounded-xl',
            children: [
              optionButtonsWidget(),
            ],
          ),
        ],
      ),
      footer(
        className: 'mt-auto w-full p-2 h-8 bg-$color-100 flex justify-end',
        children: [
          a(
            className: 'underline',
            href: 'https://github.com/pedrohaveloso/suda',
            children: [txt('SUDA')],
          ),
        ],
      ),
    ],
  );
}
