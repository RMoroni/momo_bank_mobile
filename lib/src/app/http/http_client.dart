import 'package:dio/dio.dart';
import 'package:momo_bank_mobile/src/app/http/http_client_response.dart';

abstract class HttpClientInterface {
  Future<HttpClientResponse> get(String path);

  Future<HttpClientResponse> post(String path, Map<String, dynamic> body);
}

class HttpClientImpl implements HttpClientInterface {
  final httpClient = Dio();

  @override
  Future<HttpClientResponse> get(String path) async {
    try {
      final response = await httpClient.get(path);
      return HttpClientResponseExtension.fromResponse(response);
    } on DioException catch (e) {
      print(e.message);
      print(e.response?.statusCode);
      rethrow;
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  @override
  Future<HttpClientResponse> post(
    String path,
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await httpClient.post(
        path,
        data: body,
      );
      return HttpClientResponseExtension.fromResponse(response);
    } on DioException catch (e) {
      print(e.message);
      print(e.response?.statusCode);
      rethrow;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
