import 'package:dartz/dartz.dart';
import 'package:momo_bank_mobile/src/domain/domain.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<Either<Exception, User>> signIn(String documentNumber, String password) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, User>> signUp(User user, String password) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}