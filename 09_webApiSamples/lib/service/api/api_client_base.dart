abstract class ApiClientBase {
  Future<dynamic> get(
    // Path
    String endpoint, {
    // ヘッダー
    Map<String, String>? headers,
    // クエリーパラメータ
    Map<String, dynamic>? queryParameters,
  });

  Future<dynamic> post(
    // Path
    String endpoint, {
    // ヘッダー
    Map<String, String>? headers,
    // jsonData
    Map<String, dynamic>? body,
  });

  Future<dynamic> put(
    // Path
    String endpoint, {
    // ヘッダー
    Map<String, String>? headers,
    // jsonData
    Map<String, dynamic>? body,
  });

  Future<dynamic> delete(
    // Path
    String endpoint, {
    // ヘッダー
    Map<String, String>? headers,
    // クエリーパラメータ
    Map<String, dynamic>? queryParameters,
  });
}
