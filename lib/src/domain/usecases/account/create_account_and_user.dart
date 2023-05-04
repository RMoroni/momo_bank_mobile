import 'package:dartz/dartz.dart';
import 'package:momo_bank_mobile/src/domain/domain.dart';

import '../../../app/app.dart';

class CreateAccountAndUser {
  const CreateAccountAndUser(this.accountRepository);

  final AccountRepository accountRepository;

  Future<Either<Exception, Account>> call(
    User user,
    String password,
  ) {
    return accountRepository.createAccountAndUser(user, hashText(password));
  }
}
