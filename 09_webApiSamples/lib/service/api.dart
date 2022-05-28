import 'dart:convert';

import '../models/api/messages/messages.dart';
import '../models/api/users/users.dart';
import '../models/api/user/user.dart';
import '../models/user/user.dart';

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
  Future<ApiMessages> getMessages() async {
    final res = await _apiClient.get("/api/messages",
        headers: <String, String>{"api-key": "aaaaaa"}) as Response;

    final json = jsonDecode(res.body) as Map<String, dynamic>;
    ApiMessages messages = ApiMessages.fromJson(json);

    return messages;
  }

  //
  Future<ApiUsers> getUsers() async {
    final res = await _apiClient.get("/api/users",
        headers: <String, String>{"api-key": "aaaaaa"}) as Response;

    final json = jsonDecode(res.body) as Map<String, dynamic>;
    ApiUsers users = ApiUsers.fromJson(json);
    return users;
  }

  //
  Future<ApiUser> getUser(int id) async {
    final res = await _apiClient.get("/api/user/$id",
        headers: <String, String>{"api-key": "aaaaaa"}) as Response;

    final json = jsonDecode(res.body) as Map<String, dynamic>;
    ApiUser user = ApiUser.fromJson(json);
    return user;
  }

  //
  Future<ApiUser> deleteUser(int id) async {
    final res = await _apiClient.delete("/api/user/$id",
        headers: <String, String>{"api-key": "aaaaaa"}) as Response;

    final json = jsonDecode(res.body) as Map<String, dynamic>;
    ApiUser user = ApiUser.fromJson(json);
    return user;
  }

  //
  Future<ApiUser> postUser(User user) async {

    Map<String, dynamic> body = user.toJson();

    final res = await _apiClient.post("/api/user",
        headers: <String, String>{"api-key": "aaaaaa"},
        body: body) as Response;

    final json = jsonDecode(res.body) as Map<String, dynamic>;
    ApiUser resUser = ApiUser.fromJson(json);
    return resUser;
  }

  //
  Future<ApiUser> putUser(User user) async {

    Map<String, dynamic> body = user.toJson();

    final res = await _apiClient.put("/api/user/user.id",
        headers: <String, String>{"api-key": "aaaaaa"},
        body: body) as Response;

    final json = jsonDecode(res.body) as Map<String, dynamic>;
    ApiUser resUser = ApiUser.fromJson(json);
    return resUser;
  }
}
