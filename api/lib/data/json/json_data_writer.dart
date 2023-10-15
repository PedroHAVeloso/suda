import 'dart:convert';
import 'dart:io';

import 'package:suda_api/data/data_writer.dart';
import 'package:suda_api/data/json/zombies_json_file.dart';
import 'package:suda_api/models/zombie_model.dart';

class JsonDataWriter implements DataWriter {
  @override
  Future<bool> addZombieData(ZombieModel zombie) async {
    final zombiesJson = File(zombiesJsonFile);

    final zombiesList = (jsonDecode(await zombiesJson.readAsString()) as List)
        .map((zombie) => ZombieModel.fromJson(zombie as Map<String, dynamic>))
        .toList()
      ..add(zombie);

    try {
      await zombiesJson.writeAsString(jsonEncode(zombiesList));

      return true;
    } catch (error) {
      rethrow;
    }
  }
}
