import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_basic/models/user.dart';

Response onRequest(RequestContext context) {
  switch (context.request.method) {
    case HttpMethod.get:
      const user = User(id: '1', username: 'john', email: 'john@email.com');

      return Response.json(body: user);
    case _:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}
