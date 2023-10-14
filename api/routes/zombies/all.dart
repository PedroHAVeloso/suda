import 'package:dart_frog/dart_frog.dart';
import 'package:suda_api/data/json/json_data_reader.dart';
import 'package:suda_api/services/get_all_zombies.dart';

Future<Response> onRequest(RequestContext context) async {
  final zombies = await getAllZombies(JsonDataReader());
  return Response.json(body: zombies);
}
