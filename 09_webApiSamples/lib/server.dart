import 'dart:async' show Future;
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf/shelf.dart';

class Api {
  Handler get handler {
    final router = Router();
    router.mount('/api/', _Api().router);
    return router;
  }
}

class _Api {
  Future<Response> _messages(Request request) async {
    return Response.ok('[]');
  }

  Router get router {
    final router = Router();
    router.get('/messages', _messages);
    router.get('/messages/', _messages);
    router.get('/user/<user>', (Request request, String user) {
      return Response.ok('hello $user');
    });
    router.post('/user', (Request request) {
      request.readAsString().then((String body) {
        print("body: ${body}");
      });
      return Response.ok('hello post');
    });
    router.put('/user/<user>', (Request request, String user) {
      request.readAsString().then((String body) {
        print("body: ${body}");
      });
      return Response.ok('hello put $user');
    });
    router.delete('/user/<user>', (Request request, String user) {
      return Response.ok('delete $user');
    });
    router.all('/<ignored|.*>', (Request request) => Response.notFound('null'));

    return router;
  }
}
