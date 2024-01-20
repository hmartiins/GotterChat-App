import 'package:dio/dio.dart';
import 'package:gotter_chat/app/commons/adapters/http_client/http_client_adapter.dart';
import 'package:gotter_chat/app/commons/adapters/http_client/http_response.dart';

class DioAdapter implements IHttpClientAdapter {
  DioAdapter({
    required this.dio,
  });
  final Dio dio;

  Future<HttpResponse<T>> _execute<T>(
    Future<Response<T>> Function() executeRequest,
  ) async {
    try {
      final result = await executeRequest();
      return HttpResponse<T>(
        data: result.data,
        statusCode: result.statusCode ?? 200,
      );
    } on DioException catch (e) {
      throw DioException(
        requestOptions: RequestOptions(path: e.requestOptions.path),
        error: e.message,
      );
    }
  }

  @override
  Future<HttpResponse<T>> get<T>(
    String path, {
    Map<String, String>? queryParameters,
    Map<String, String>? headers,
  }) async =>
      _execute<T>(
        () => dio.get(
          path,
          queryParameters: queryParameters,
          options: Options(headers: headers),
        ),
      );

  @override
  Future<HttpResponse<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, String>? queryParameters,
    Map<String, String>? headers,
  }) async =>
      _execute<T>(
        () => dio.post(
          path,
          queryParameters: queryParameters,
          options: Options(headers: headers),
        ),
      );

  @override
  Future<HttpResponse<T>> put<T>(
    String path, {
    dynamic data,
    Map<String, String>? queryParameters,
    Map<String, String>? headers,
  }) async =>
      _execute<T>(
        () => dio.put(
          path,
          queryParameters: queryParameters,
          options: Options(headers: headers),
        ),
      );

  @override
  Future<HttpResponse<T>> delete<T>(
    String path, {
    dynamic data,
    Map<String, String>? queryParameters,
    Map<String, String>? headers,
  }) async =>
      _execute<T>(
        () => dio.delete(
          path,
          queryParameters: queryParameters,
          options: Options(headers: headers),
        ),
      );
}
