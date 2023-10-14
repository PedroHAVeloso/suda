import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context, String country) {
  return Response(body: 'post id: $country');
}
