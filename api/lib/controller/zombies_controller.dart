import 'dart:convert';

import 'package:suda_api/data/json/json_data_reader.dart';
import 'package:suda_api/data/json/json_data_writer.dart';
import 'package:suda_api/models/zombie_model.dart';
import 'package:suda_api/services/add_zombie.dart' as services;
import 'package:suda_api/services/get_all_zombies.dart' as services;

class ZombiesController {
  final _reader = JsonDataReader();
  final _writer = JsonDataWriter();

  Future<List<ZombieModel>> getAllZombies() async {
    return services.getAllZombies(_reader);
  }

  Future<bool> addZombie(String body) async {
    try {
      final bodyJson = jsonDecode(body) as Map<String, dynamic>;

      final zombie = ZombieModel.fromJson(bodyJson);

      final status = services.addZombie(_writer, zombie);

      return status;
    } catch (error) {
      return false;
    }
  }
}
