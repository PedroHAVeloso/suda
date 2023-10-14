import 'package:suda_api/data/data_reader.dart';
import 'package:suda_api/models/zombie_model.dart';

Future<List<ZombieModel>> getAllZombies(DataReader reader) async {
  final zombies = await reader.getZombiesData();

  return zombies;
}
