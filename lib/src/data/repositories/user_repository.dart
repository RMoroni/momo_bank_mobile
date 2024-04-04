import 'package:dartz/dartz.dart';
import 'package:momo_bank_mobile/src/data/datasources/user/user_datasource.dart';
import 'package:momo_bank_mobile/src/domain/domain.dart';

class UserRepositoryImpl implements UserRepository {
  const UserRepositoryImpl({required this.userDatasource});

  final UserDatasource userDatasource;
  @override
  Future<Either<Exception, User>> signIn(String documentNumber, String password) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, User>> signUp(User user, String password) {
    return userDatasource.signUp(user, password);
  }
}