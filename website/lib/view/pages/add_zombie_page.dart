import 'package:deact/deact.dart';
import 'package:deact/deact_html52.dart';
import 'package:suda_website/view/style/color.dart';
import 'package:suda_website/view/widgets/header_widget.dart';

DeactNode addZombiePage() {
  return div(
    id: 'add-zombie-page',
    className: 'p-2 text-$color-900 flex flex-col gap-2 h-full',
    children: [
      headerWidget(),
      form(
        children: [
          input(id: ''),
          input(id: ''),
        ],
      ),
    ],
  );
}
