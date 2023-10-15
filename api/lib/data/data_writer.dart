import 'package:suda_api/models/zombie_model.dart';

abstract interface class DataWriter {
  Future<bool> addZombieData(ZombieModel zombie);
}
