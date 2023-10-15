part of 'package:suda_website/app.dart';

void _optionOnClick(Event event) {}

ButtonElement optionButton(String text, String id) {
  return ButtonElement()
    ..text = text
    ..className = ButtonStyle.primaryButton()
    ..onClick.listen(_optionOnClick);
}
