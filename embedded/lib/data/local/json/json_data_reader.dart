import 'dart:convert';
import 'dart:io';

import 'package:embedded/data/local/data_reader.dart';
import 'package:embedded/data/local/json/danger_protocol_file.dart';
import 'package:embedded/models/danger_model.dart';

class JsonDataReader implements DataReader {
  @override
  Future<DangerModel> getDangerData(String id) async {
    final dangerJson = await File(dangerProtocolJsonFile).readAsString();

    final dangerList = (jsonDecode(dangerJson) as List)
        .map((zombie) => DangerModel.fromJson(zombie as Map<String, dynamic>))
        .toList();

    return dangerList.where((zombie) => zombie.id == id).first;
  }
}
