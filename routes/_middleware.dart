import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  return handler
      // .use(requestLogger())
      .use(_rootMiddlewareOne)
      .use(_rootMiddlewareTwo)
      .use(_rootMiddlewareThree)
      .use(tokenProvider());
      // .use(anotherStringProvider())
}

Handler _rootMiddlewareOne(Handler handler) {
  return (RequestContext context) async {
    print('[root] before request');

    final response = await handler(context);

    print('[root] after request');

    return response;
  };
}

Handler _rootMiddlewareTwo(Handler handler) {
  return (RequestContext context) async {
    print('[root 2] before request');

    final response = await handler(context);

    print('[root 2] after request');

    return response;
  };
}

Handler _rootMiddlewareThree(Handler handler) {
  return (RequestContext context) async {
    print('[root 3] before request');

    final response = await handler(context);

    print('[root 3] after request');

    return response;
  };
}

Middleware tokenProvider() {
  return provider<String>((context) => '1234xyz');
}

// Middleware anotherStringProvider() {
//   return provider<String>((context) => 'Another String');
// }
