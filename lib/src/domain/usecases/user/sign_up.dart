import 'package:dartz/dartz.dart';
import 'package:momo_bank_mobile/src/app/utils/hash.dart';

import '../../domain.dart';

class SignUp {
  const SignUp();

  Future<Either<Error, User>> call(User user, String password) async {
    final hashPassword = hashText(password);
    print(hashPassword);
    final createdUser = user.copyWith(id: '123456');
    await Future.delayed(const Duration(seconds: 3));
    return Future(() => Right(createdUser));
  }
}