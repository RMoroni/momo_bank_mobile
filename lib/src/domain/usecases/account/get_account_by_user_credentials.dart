import 'package:dartz/dartz.dart';

import '../../../app/app.dart';
import '../../domain.dart';

class GetAccountByUserCredentials {
  const GetAccountByUserCredentials(this.accountRepository);

  final AccountRepository accountRepository;

  Future<Either<Exception, Account>> call(
      String documentNumber, String password) async {
    return accountRepository.getAccountByUserCredentials(
      documentNumber,
      hashText(password),
    );
  }
}
