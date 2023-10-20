import 'dart:convert';
import 'dart:io';

import 'package:embedded/data/local/data_reader.dart';
import 'package:embedded/data/local/json/danger_protocol_file.dart';
import 'package:embedded/models/danger_model.dart';

class JsonDataReader implements DataReader {
  @override
  Future<DangerModel?> getDangerData(String id) async {
    final dangerJson = await File(dangerProtocolJsonFile).readAsString();

    final dangerList = (jsonDecode(dangerJson) as List)
        .map((zombie) => DangerModel.fromJson(zombie as Map<String, dynamic>))
        .toList();

    final where = dangerList.where((zombie) => zombie.id == id);

    if (where.isNotEmpty) return where.first;
    return null;
  }

  @override
  Future<List<DangerModel>> getAllDangerData() async {
    final dangerJson = await File(dangerProtocolJsonFile).readAsString();

    final dangerMap = (jsonDecode(dangerJson) as List)
        .map((zombie) => DangerModel.fromJson(zombie as Map<String, dynamic>))
        .toList();

    return dangerMap;
  }
}
