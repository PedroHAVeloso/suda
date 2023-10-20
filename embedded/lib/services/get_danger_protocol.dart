import 'package:embedded/data/local/json/json_data_reader.dart';
import 'package:embedded/models/danger_model.dart';

final dataReader = JsonDataReader();

Future<DangerModel?> getDangerProtocol(String id) async {
  return dataReader.getDangerData(id);
}
