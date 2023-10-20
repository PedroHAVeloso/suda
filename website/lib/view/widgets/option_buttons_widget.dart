import 'package:deact/deact.dart';
import 'package:suda_website/view/widgets/button/primary_button_widget.dart';

DeactNode optionButtonsWidget() => fc((ctx) {
      return fragment([
        primaryButtonWidget(
          'Listar todos os zumbis',
        ),
      ]);
    });
