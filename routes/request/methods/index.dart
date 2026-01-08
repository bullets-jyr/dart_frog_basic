import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context) {
  return switch (context.request.method) {
    HttpMethod.get => _handleGet(context),
    HttpMethod.post => _handlePost(context),
    HttpMethod.put => _handlePut(context),
    HttpMethod.delete => _handleDelete(context),
    _ => Response(
        statusCode: HttpStatus.methodNotAllowed,
        body: 'Invalid Request',
      ),
  };
}
