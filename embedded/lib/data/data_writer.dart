import 'package:embedded/models/danger_model.dart';

abstract interface class DataWriter {
  Future<bool> addDangerData(DangerModel zombieDanger);
}
