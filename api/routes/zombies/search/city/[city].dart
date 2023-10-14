import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context, String city) {
  return Response(body: 'post id: $city');
}
