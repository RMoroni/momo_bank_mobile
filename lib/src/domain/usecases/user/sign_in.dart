import 'package:dartz/dartz.dart';
import 'package:momo_bank_mobile/src/domain/domain.dart';

class SignIn {
  const SignIn(this.userRepository);

  final UserRepository userRepository;

  Future<Either<Exception, User>> call(String documentNumber,
      String password,) async {
    await Future.delayed(const Duration(seconds: 2));
    const user = User(name: 'Rodrigo',
      documentNumber: '99999999999',
      email: 'email@momo.com',
      phone: '9999999999',);
    return const Right(user);
  }
}
