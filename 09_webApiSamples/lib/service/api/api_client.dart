import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'api_client_base.dart';
import 'dart:io';

class ApiClient implements ApiClientBase {

  // ベースURL
  static const String baseUrl = 'http://localhost:3000';

  // ヘッダー情報
  @protected
  Map<String, String> _getHeaders(
    Map<String, String>? headers,
  ) {
    // base
    Map<String, String> resultHeader = <String, String>{
      HttpHeaders.contentTypeHeader: 'application/json'
    };
    // ヘッダーのマージ
    if (headers != null) {
      resultHeader.addAll(headers);
    }
    return resultHeader;
  }

  // ベースURLをURIで取得
  @protected
  Uri _getBaseUrl() {
    return Uri.parse(baseUrl);
  }

  // リクエストURLを生成
  @protected
  Uri _createUrl(String path, {Map<String, dynamic>? queryParameters}) {
    final endpoint = _getBaseUrl();
    return Uri(
        scheme: endpoint.scheme,
        host: endpoint.host,
        port: endpoint.port,
        path: path,
        queryParameters: queryParameters);
  }

  // GET
  @override
  Future<http.Response?> get(
    String endpoint, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    // URL生成
    Uri url = _createUrl(endpoint, queryParameters: queryParameters);
    // ヘッダーを取得
    final headerParams = _getHeaders(headers);
    // GET
    final http.Response response = await http.get(url, headers: headerParams);
    return response;
  }

  // POST
  @override
  Future<http.Response?> post(
    String endpoint, {
    Map<String, String>? headers,
    Map<String, dynamic>? body,
  }) async {
    // URL生成
    Uri url = _createUrl(endpoint);
    // ヘッダーを取得
    final headerParams = _getHeaders(headers);
    final jsonBody = jsonEncode(body);
    // POST
    final http.Response response =
        await http.post(url, headers: headerParams, body: jsonBody);
    return response;
  }

  // PUT
  @override
  Future<http.Response?> put(
    String endpoint, {
    Map<String, String>? headers,
    Map<String, dynamic>? body,
  }) async {
    // URL生成
    Uri url = _createUrl(endpoint);
    // ヘッダーを取得
    final headerParams = _getHeaders(headers);
    final jsonBody = jsonEncode(body);
    // PUT
    final http.Response response =
        await http.put(url, headers: headerParams, body: jsonBody);
    return response;
  }

  // DELETE
  @override
  Future<http.Response?> delete(
    String endpoint, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    // URL生成
    Uri url = _createUrl(endpoint, queryParameters: queryParameters);
    // ヘッダーを取得
    final headerParams = _getHeaders(headers);
    // GET
    final http.Response response =
        await http.delete(url, headers: headerParams);
    return response;
  }
}
