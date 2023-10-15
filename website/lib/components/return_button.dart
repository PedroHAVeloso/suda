part of 'package:suda_website/app.dart';

void _returnOnClick(Event event) {
  options.hidden = false;
  search.hidden = true;
}

ButtonElement returnButton() {
  return ButtonElement()
    ..value = 'Voltar'
    ..className = ButtonStyle.secondaryButton()
    ..onClick.listen(_returnOnClick);
}
