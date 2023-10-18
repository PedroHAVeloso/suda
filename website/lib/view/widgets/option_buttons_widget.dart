import 'package:deact/deact.dart';
import 'package:suda_website/view/pages/list_zombies_page.dart';
import 'package:suda_website/view/widgets/button/primary_button_widget.dart';

DeactNode optionButtonsWidget() => fc((ctx) {
      final page = ctx.globalState<DeactNode>('page');

      return fragment([
        primaryButtonWidget(
          'Listar todos os zumbis',
          onClick: (event) {
            page.set((state) => listZombiesPage());
          },
        ),
      ]);
    });
