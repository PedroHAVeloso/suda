import 'package:deact/deact.dart';
import 'package:suda_website/view/pages/home_page.dart';

DeactNode app() {
  return globalState<DeactNode>(
    name: 'page',
    initialValue: homePage(),
    children: [
      fc((ctx) => ctx.globalState<DeactNode>('page').value),
    ],
  );
}
