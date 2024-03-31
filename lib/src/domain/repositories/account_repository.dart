import 'package:dartz/dartz.dart';
import 'package:momo_bank_mobile/src/domain/domain.dart';

abstract class AccountRepository {
  Future<Either<Exception, Account>> createAccount(
    User user,
  );
  Future<Either<Exception, num>> getAccountBalance(Account account);
  Future<Either<Exception, Account>> getAccountByUserCredentials(
    String documentNumber,
    String password,
  );
}
