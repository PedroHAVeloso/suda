import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:suda_api/controller/zombies_controller.dart';

final zombiesController = ZombiesController();

Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;

  if (method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  final dpZombies = await zombiesController.dpGetAllZombies();

  return Response.json(body: dpZombies);
}
