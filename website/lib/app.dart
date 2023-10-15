import 'dart:html';

part 'package:suda_website/components/return_button.dart';
part 'package:suda_website/components/option_button.dart';
part 'package:suda_website/style/button_style.dart';

final loading = querySelector('#loading')!;
final options = querySelector('#options')!;
final search = querySelector('#search')!;

void app() {
  options.children.addAll([
    optionButton('Listar todos', '#list-all'),
    optionButton('Listar por estado', '#list-state'),
    optionButton('Listar por cidade', '#list-city'),
  ]);

  loading.style.display = 'none';
  options.style.display = 'flex';
}
