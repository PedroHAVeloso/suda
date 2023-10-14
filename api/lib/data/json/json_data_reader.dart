import 'dart:convert';
import 'dart:io';

import 'package:suda_api/data/data_reader.dart';
import 'package:suda_api/models/zombie_model.dart';

class JsonDataReader implements DataReader {
  final _zombiesJsonFile = 'lib/data/json/zombies.json';

  @override
  Future<List<ZombieModel>> getZombiesData() async {
    final zombiesJson = await File(_zombiesJsonFile).readAsString();

    final zombiesMap = (jsonDecode(zombiesJson) as List)
        .map((zombie) => ZombieModel.fromJson(zombie as Map<String, dynamic>))
        .toList();

    return zombiesMap;
  }
}
