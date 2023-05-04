import 'package:dartz/dartz.dart';

import '../../domain.dart';

class SignUp {
  const SignUp(this.userRepository);

  final UserRepository userRepository;

  Future<Either<Exception, User>> call(User user, String password) async {
    final createdUser = user.copyWith(id: '123456');
    await Future.delayed(const Duration(seconds: 3));
    return Future(() => Right(createdUser));
  }
}
