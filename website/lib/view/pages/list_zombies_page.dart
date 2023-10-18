import 'dart:async';

import 'package:deact/deact.dart';
import 'package:deact/deact_html52.dart';
import 'package:suda_website/data/get_all_zombies.dart';
import 'package:suda_website/view/style/color.dart';
import 'package:suda_website/view/widgets/header_widget.dart';
import 'package:suda_website/view/widgets/zombie_widget.dart';

DeactNode listZombiesPage() {
  return div(
    id: 'list-zombies-page',
    className: 'p-2 text-$color-900 flex flex-col gap-2',
    children: [
      headerWidget(),
      main(
        children: [
          globalState<DeactNode?>(
            name: 'zombies-article',
            children: [
              _zombiesArticleList(),
            ],
          ),
        ],
      ),
    ],
  );
}

DeactNode _zombiesArticleList() {
  return fc((ctx) {
    final zombiesArticle = ctx.globalState<DeactNode?>('zombies-article');

    if (zombiesArticle.value == null) {
      Future.sync(() async {
        final zombies = await getAllZombies();
        zombiesArticle.set(
          (state) => article(
            className: 'flex gap-2 p-2 bg-$color-50 rounded-xl flex-wrap',
            children: zombies.map(
              zombieWidget,
            ),
          ),
        );
      });
    }

    return zombiesArticle.value ?? article();
  });
}
