import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:suda_website/data/api_url.dart';
import 'package:suda_website/models/zombie_model.dart';

Future<List<ZombieModel>> getAllZombies() async {
  final response = await http.get(
    Uri.parse('$apiUrl/zombies'),
  );

  if (response.statusCode != 200) throw Exception();

  final zombiesJson = jsonDecode(response.body) as List;
  final zombiesList = <ZombieModel>[];

  for (final zombie in zombiesJson) {
    zombiesList.add(
      ZombieModel.fromJson(zombie as Map<String, dynamic>),
    );
  }

  return zombiesList;
}
