import 'package:embedded/models/danger_model.dart';

abstract interface class DataWriter {
  Future<bool> updateDangerData(List<DangerModel> zombieDanger);
}
