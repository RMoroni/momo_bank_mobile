import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:momo_bank_mobile/src/app/http/http_client_response.dart';

abstract class HttpClientInterface {
  Future<Either<Exception, HttpClientResponse>> get(String path);

  Future<Either<Exception, HttpClientResponse>> post(String path,
      Map<String, dynamic> body);
}

class HttpClientImpl implements HttpClientInterface {
  final httpClient = Dio();

  bool isValidStatusCode(int? statusCode) {
    return (statusCode != null &&
        ((statusCode >= 200 && statusCode <= 299) || statusCode == 304));
  }

  @override
  Future<Either<Exception, HttpClientResponse>> get(String path) async {
    final response = await httpClient.get(path);
    if (isValidStatusCode(response.statusCode)) {
      return Right(HttpClientResponseExtension.fromResponse(response));
    } else {
      return Left(Exception());
    }
  }

  @override
  Future<Either<Exception, HttpClientResponse>> post(String path,
      Map<String, dynamic> body,) async {
    final response = await httpClient.post(path, data: body,);
    if (isValidStatusCode(response.statusCode)) {
      return Right(HttpClientResponseExtension.fromResponse(response));
    } else {
      return Left(Exception());
    }
  }
}
