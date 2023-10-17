import 'package:deact/deact.dart';
import 'package:deact/deact_html52.dart';
import 'package:suda_website/view/widgets/header_widget.dart';
import 'package:suda_website/view/widgets/option_box_widget.dart';
import 'package:suda_website/view/widgets/search_box_widget.dart';

DeactNode homePage() {
  return fragment([
    headerWidget(),
    main(
      children: [
        globalState<bool>(
          name: 'openSearch',
          initialValue: false,
          children: [
            fc((ctx) {
              final openSearch = ctx.globalState<bool>('openSearch');
  
              if (openSearch.value) return searchBoxWidget();
              return optionsBoxWidget();
            }),
          ],
        ),
      ],
    ),
  ]);
}
