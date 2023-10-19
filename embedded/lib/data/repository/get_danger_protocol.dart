import 'dart:convert';

import 'package:embedded/data/repository/api_url.dart';
import 'package:embedded/models/danger_model.dart';
import 'package:http/http.dart' as http;

Future<List<DangerModel>> getDangerProtocol() async {
  final response = await http.get(
    Uri.parse('$apiUrl/danger-protocol'),
  );

  if (response.statusCode != 200) throw Exception();

  final dangerJson = jsonDecode(response.body) as List;
  final dangerList = <DangerModel>[];

  for (final zombie in dangerJson) {
    dangerList.add(
      DangerModel.fromJson(zombie as Map<String, dynamic>),
    );
  }

  return dangerList;
}
