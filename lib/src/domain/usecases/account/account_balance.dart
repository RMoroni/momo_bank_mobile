import 'package:dartz/dartz.dart';

import '../../domain.dart';

class AccountBalance {
  const AccountBalance();

  Future<Either<Exception, num>> call(Account account) {
    return Future(() => const Right(150));
  }
}
