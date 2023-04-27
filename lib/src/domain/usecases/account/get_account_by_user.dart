import 'package:dartz/dartz.dart';

import '../../domain.dart';

class GetAccountByUser {
  const GetAccountByUser();

  Future<Either<Exception, Account>> call(User user) {
    final account = Account(accountNumber: '123456', user: user);
    return Future(() => Right(account));
  }
}
