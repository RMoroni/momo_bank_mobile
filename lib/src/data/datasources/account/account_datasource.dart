import 'package:dartz/dartz.dart';
import 'package:momo_bank_mobile/src/app/http/endpoints.dart';
import 'package:momo_bank_mobile/src/domain/domain.dart';

import '../../../app/app.dart';

class AccountDatasource {
  const AccountDatasource({required this.httpClient});

  final HttpClientInterface httpClient;

  Future<Either<Exception, Account>> createAccountAndUser(User user, String password,) async {
    final response = await httpClient.post(
      Endpoints.createAccountAndUserEndpoint,
      {
        "user": user.toJson(),
        "password": password,
      },
    );
    response.fold((l) => Left(l), (r) => AccountExtension.fromJson(r.body));
    return Left(Exception());
  }
}
