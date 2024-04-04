import 'package:dartz/dartz.dart';
import 'package:momo_bank_mobile/src/app/app.dart';
import 'package:momo_bank_mobile/src/app/http/endpoints.dart';
import 'package:momo_bank_mobile/src/domain/domain.dart';

class UserDatasource {
  const UserDatasource({required this.httpClient});

  final HttpClientInterface httpClient;

  Future<Either<Exception, User>> signUp(User user, String password) async {
    try {
      final response = await httpClient.post(Endpoints.createUser, user.toJson(),);
      return Right(UserExtension.fromJson(response.data));
    } catch(e) {
      return Left(Exception(e));
    }
  }
}