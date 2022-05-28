import 'api/api_client.dart';
import 'package:http/http.dart';

class Api {
  static final Api _instance = Api._internal();

  factory Api() {
    return _instance;
  }

  Api._internal();

  final ApiClient _apiClient = ApiClient();

  //
  dynamic getMessages() async {
    final res = await _apiClient.get("/api/messages",
        headers: <String, String>{"api-key": "aaaaaa"}) as Response;
    ;
    print("status: ${res.statusCode}");
    print("body: ${res.body}");

  }

  //
  dynamic getUsers() async {
    final res = await _apiClient.get("/api/users",
        headers: <String, String>{"api-key": "aaaaaa"}) as Response;
    ;
    print("status: ${res.statusCode}");
    print("body: ${res.body}");


  }
}
