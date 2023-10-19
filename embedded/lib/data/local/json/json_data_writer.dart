import 'dart:convert';
import 'dart:io';

import 'package:embedded/data/local/data_writer.dart';
import 'package:embedded/data/local/json/danger_protocol_file.dart';
import 'package:embedded/models/danger_model.dart';

class JsonDataWriter implements DataWriter {
  @override
  Future<bool> updateDangerData(List<DangerModel> zombieDanger) async {
    final dangerJson = File(dangerProtocolJsonFile);

    try {
      await dangerJson.writeAsString(jsonEncode(zombieDanger));

      return true;
    } catch (error) {
      rethrow;
    }
  }
}
