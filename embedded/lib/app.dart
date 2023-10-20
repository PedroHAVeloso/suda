import 'dart:io';

import 'package:embedded/data/update_local_data.dart';
import 'package:embedded/extensions/colour_string.dart';
import 'package:embedded/services/get_danger_protocol.dart';
import 'package:embedded/services/list_all_zombies.dart';

void app() {
  updateLocalData();
  program();
}

Future<void> program() async {
  stdout.writeln(
    'Função desejada: \n'.white() +
        '[1] - Listar todos os infectados. \n'.blue() +
        '[2] - Pesquisar periculosidade por ID.'.green(),
  );

  final func = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  if (![1, 2].contains(func)) {
    stdout.writeln('Função não encontrada.'.red());
    await program();
    return;
  }

  if (func == 1) {
    stdout.writeln(
      (await listAllZombies()).map(
        (danger) => '${danger.toJson()}\n',
      ),
    );
  }

  if (func == 2) {
    stdout.writeln('Informe o ID: '.green());
    final id = stdin.readLineSync() ?? '';
    final danger = await getDangerProtocol(id);
    if (danger == null) {
      stdout.writeln('ID não encontrado.'.red());
      await program();
      return;
    }

    stdout.writeln(danger.toJson().toString());
  }

  await program();
  return;
}
