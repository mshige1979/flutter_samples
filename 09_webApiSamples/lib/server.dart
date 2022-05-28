import 'dart:async' show Future;
import 'dart:convert';
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

  // テスト用の仮API
  Router get router {
    final router = Router();
    router.get('/messages', (Request request) async {
      return Response.ok(
        json.encode({
          "status": "0",
          "list": ["aaaaaaaaaaaaaaa", "bbbbbbbb", "cccccccc"]
        }),
        headers: {'content-type': 'application/json'},
      );
    });
    router.get('/users', (Request request) async {
      return Response.ok(
        json.encode({
          "status": "0",
          "list": [
            {"id": 1, "name": "aaaa"},
            {"id": 2, "name": "cccc"}
          ]
        }),
        headers: {'content-type': 'application/json'},
      );
    });
    router.get('/user/<user>', (Request request, String user) {
      return Response.ok(
        json.encode({
          "status": "0",
          "user": {"id": 1, "name": "aaaa"}
        }),
        headers: {'content-type': 'application/json'},
      );
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
