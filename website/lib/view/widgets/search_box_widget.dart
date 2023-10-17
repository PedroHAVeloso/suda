import 'package:deact/deact.dart';
import 'package:deact/deact_html52.dart';
import 'package:suda_website/view/widgets/button/primary_button_widget.dart';

DeactNode searchBoxWidget() => fc((ctx) {
      final openSearch = ctx.globalState<bool>('openSearch');

      return article(
        children: [
          primaryButtonWidget(
            'Fechar',
            onClick: (event) => openSearch.set((state) => false),
          ),
        ],
      );
    });
