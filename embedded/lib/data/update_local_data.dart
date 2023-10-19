import 'dart:async';

import 'package:embedded/data/local/data_writer.dart';
import 'package:embedded/data/local/json/json_data_writer.dart';
import 'package:embedded/data/repository/api_status.dart';
import 'package:embedded/data/repository/get_danger_protocol.dart';

void updateLocalData() {
  Timer.periodic(_timeToUpdate, (timer) async {
    final status = await apiStatus();
    if (status) await _updateLocalData(JsonDataWriter());
  });
}

const _timeToUpdate = Duration(minutes: 2);

Future<void> _updateLocalData(DataWriter writer) async {
  final danger = await getDangerProtocol();
  await writer.updateDangerData(danger);
}
