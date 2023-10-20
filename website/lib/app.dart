import 'package:deact/deact.dart';
import 'package:suda_website/view/pages/add_zombie_page.dart';

void app() {
  deact(
    '#root',
    (_) => globalState<DeactNode>(
      name: 'page',
      initialValue: addZombiePage(),
      children: [
        fc((ctx) {
          return ctx.globalState<DeactNode>('page').value;
        }),
      ],
    ),
  );
}
