import 'package:suda_api/data/data_reader.dart';
import 'package:suda_api/models/danger_model.dart';
import 'package:suda_api/utils/danger_protocol.dart';

Future<List<DangerModel>> dpGetAllZombies(DataReader reader) async {
  final zombies = await reader.getZombiesData();

  final dpZombies = <DangerModel>[];

  for (final zombie in zombies) {
    dpZombies.add(DangerProtocol.getZombieDanger(zombie));
  }

  return dpZombies;
}
