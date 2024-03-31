import 'package:dio/dio.dart';

class HttpClientResponse {
  const HttpClientResponse({
    required this.data,
    required this.statusCode,
  });

  final Map<String, dynamic> data;
  final int statusCode;
}

extension HttpClientResponseExtension on HttpClientResponse {
  static HttpClientResponse fromResponse(Response response) {
    return HttpClientResponse(
      data: response.data,
      statusCode: response.statusCode!,
    );
  }
}
