import 'package:dartz/dartz.dart';
import 'package:momo_bank_mobile/src/domain/domain.dart';

class AccountRepositoryImpl implements AccountRepository {
  @override
  Future<Either<Exception, Account>> createAccountAndUser(
    User user,
    String password,
  ) {
    // TODO: implement createAccountForUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, num>> getAccountBalance(Account account) {
    // TODO: implement getAccountBalance
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, Account>> getAccountByUserCredentials(
    String documentNumber,
    String password,
  ) {
    // TODO: implement getAccountByUserCredentials
    throw UnimplementedError();
  }
}
