import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

// http://localhost:8080/dynamic/comments/today
// http://localhost:8080/dynamic/comments/lastweek/monday
Response onRequest(RequestContext context, String date) {
  switch (context.request.method) {
    case HttpMethod.get:
      return Response.json(
        body: {'date': date},
      );
    case _:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}
