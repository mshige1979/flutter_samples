import 'dart:convert';

import '../models/api/messages/messages.dart';
import '../models/api/users/users.dart';

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
  Future<Messages> getMessages() async {
    final res = await _apiClient.get("/api/messages",
        headers: <String, String>{"api-key": "aaaaaa"}) as Response;
    print("status: ${res.statusCode}");
    print("body: ${res.body}");

    final json = jsonDecode(res.body) as Map<String, dynamic>;
    Messages messages = Messages.fromJson(json);

    return messages;
  }

  //
  Future<Users> getUsers() async {
    final res = await _apiClient.get("/api/users",
        headers: <String, String>{"api-key": "aaaaaa"}) as Response;
    print("status: ${res.statusCode}");
    print("body: ${res.body}");

    final json = jsonDecode(res.body) as Map<String, dynamic>;
    Users users = Users.fromJson(json);
    return users;
  }
}
