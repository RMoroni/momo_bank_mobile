import 'package:dartz/dartz.dart';
import 'package:momo_bank_mobile/src/data/data.dart';
import 'package:momo_bank_mobile/src/domain/domain.dart';

class AccountRepositoryImpl implements AccountRepository {
  const AccountRepositoryImpl(this.accountDatasource);

  final AccountDatasource accountDatasource;

  @override
  Future<Either<Exception, Account>> createAccount(
    User user,
  ) {
    return accountDatasource.createAccount(user);
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
