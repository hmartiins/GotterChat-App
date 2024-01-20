import 'package:gotter_chat/app/commons/adapters/http_client/http_response.dart';

abstract class IHttpClientAdapter {
  Future<HttpResponse<T>> get<T>(
    String path, {
    Map<String, String> queryParameters,
    Map<String, String> headers,
  });

  Future<HttpResponse<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, String> queryParameters,
    Map<String, String> headers,
  });

  Future<HttpResponse<T>> put<T>(
    String path, {
    dynamic data,
    Map<String, String> queryParameters,
    Map<String, String> headers,
  });

  Future<HttpResponse<T>> delete<T>(
    String path, {
    Map<String, String> queryParameters,
    Map<String, String> headers,
  });
}
