import 'package:dartz/dartz.dart';
import 'package:momo_bank_mobile/src/domain/domain.dart';

class CreateAccount {
  const CreateAccount(this.accountRepository);

  final AccountRepository accountRepository;

  Future<Either<Exception, Account>> call(
    User user,
  ) async {
    await Future.delayed(const Duration(seconds: 3));
    return Right(Account(accountNumber: '123456', user: user));
    // return accountRepository.createAccount(user);
  }
}
