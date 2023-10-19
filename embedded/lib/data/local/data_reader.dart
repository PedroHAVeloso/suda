import 'package:embedded/models/danger_model.dart';

abstract interface class DataReader {
  Future<DangerModel> getDangerData(String id);
}
