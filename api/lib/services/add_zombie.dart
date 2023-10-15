import 'package:suda_api/data/data_writer.dart';
import 'package:suda_api/models/zombie_model.dart';

Future<bool> addZombie(DataWriter writer, ZombieModel zombie) {
  final status = writer.addZombieData(zombie);

  return status;
}
