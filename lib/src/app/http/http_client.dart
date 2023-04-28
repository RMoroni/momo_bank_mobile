import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:momo_bank_mobile/src/app/http/http_client_response.dart';

abstract class HttpClientInterface {
  Future<Either<Exception, HttpClientResponse>> get(String path);

  Future<HttpClientResponse> post(String path, Map<String, dynamic> body);
}

class HttpClientImpl implements HttpClientInterface {
  late HttpClient client;

  @override
  Future<Either<Exception, HttpClientResponse>> get(String path) async {
    try {
      client = HttpClient();
      final url = Uri.parse(path);
      final request = await client.getUrl(url);
      final response = await request.close();
      final responseBody = await response.transform(utf8.decoder).single;
      return Right(HttpClientResponse(
        body: json.decode(responseBody),
        code: response.statusCode.toString(),
      ));
    } catch (error) {
      // TODO handle error
      return Left(Exception(error));
    } finally {
      client.close();
    }
  }

  @override
  Future<HttpClientResponse> post(
    String path,
    Map<String, dynamic> body,
  ) {
    // TODO: implement post
    throw UnimplementedError();
  }
}
