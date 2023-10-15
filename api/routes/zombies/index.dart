import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:suda_api/controller/zombies_controller.dart';

final zombiesController = ZombiesController();

Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  
  // All
  if (method == HttpMethod.get) {
    final zombies = await zombiesController.getAllZombies();

    return Response.json(body: zombies);
  }

  // Add
  if (method == HttpMethod.post) {
    final body = await context.request.body();
    final status = await zombiesController.addZombie(body);

    if (!status) {
      return Response(statusCode: HttpStatus.unprocessableEntity);
    }

    return Response();
  }

  return Response(statusCode: HttpStatus.methodNotAllowed);
}
