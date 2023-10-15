import 'dart:convert';
import 'dart:io';

import 'package:suda_api/data/data_reader.dart';
import 'package:suda_api/data/json/zombies_json_file.dart';
import 'package:suda_api/models/zombie_model.dart';

class JsonDataReader implements DataReader {
  @override
  Future<List<ZombieModel>> getZombiesData() async {
    final zombiesJson = await File(zombiesJsonFile).readAsString();

    final zombiesList = (jsonDecode(zombiesJson) as List)
        .map((zombie) => ZombieModel.fromJson(zombie as Map<String, dynamic>))
        .toList();

    return zombiesList;
  }
}
