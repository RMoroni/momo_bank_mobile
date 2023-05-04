import 'package:dartz/dartz.dart';

import '../domain.dart';

abstract class UserRepository {
  Future<Either<Exception, User>> signIn(
    String documentNumber,
    String password,
  );
  Future<Either<Exception, User>> signUp(User user, String password);
}
