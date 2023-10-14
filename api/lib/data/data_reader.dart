import 'package:suda_api/models/zombie_model.dart';

abstract interface class DataReader {
  Future<List<ZombieModel>> getZombiesData();
}
