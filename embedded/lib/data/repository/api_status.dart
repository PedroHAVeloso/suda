import 'package:embedded/data/repository/api_url.dart';
import 'package:http/http.dart' as http;

Future<bool> apiStatus() async {
  final status = await http.get(Uri.parse(apiUrl));

  if (status.statusCode != 200) return false;

  return true;
}
