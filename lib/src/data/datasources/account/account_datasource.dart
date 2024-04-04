import 'package:dartz/dartz.dart';
import 'package:momo_bank_mobile/src/app/http/endpoints.dart';
import 'package:momo_bank_mobile/src/domain/domain.dart';

import '../../../app/app.dart';

class AccountDatasource {
  const AccountDatasource({required this.httpClient});

  final HttpClientInterface httpClient;

  Future<Either<Exception, Account>> createAccount(
    User user,
  ) async {
    try {
      final response = await httpClient.post(
        Endpoints.createAccount,
        {
          "user": user.toJson(),
        },
      );
      return Right(AccountExtension.fromJson(response.data));
    } catch (e) {
      return Left(Exception(e));
    }
  }
}
