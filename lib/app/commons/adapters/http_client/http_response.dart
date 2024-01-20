class HttpResponse<T> {
  HttpResponse({
    required this.statusCode,
    this.data,
  });

  final T? data;
  final int statusCode;
}
