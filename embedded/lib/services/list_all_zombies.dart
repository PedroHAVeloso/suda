import 'package:embedded/data/local/json/json_data_reader.dart';
import 'package:embedded/models/danger_model.dart';

final dataReader = JsonDataReader();

Future<List<DangerModel>> listAllZombies() async {
  return dataReader.getAllDangerData();
}
