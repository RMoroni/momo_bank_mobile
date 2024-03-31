import 'package:get_it/get_it.dart';
import 'package:momo_bank_mobile/src/app/app.dart';
import 'package:momo_bank_mobile/src/data/data.dart';
import 'package:momo_bank_mobile/src/domain/domain.dart';

final injectable = GetIt.instance;

void setup() {
  // Factories
  //// App
  injectable.registerFactory<HttpClientInterface>(() => HttpClientImpl());

  //// Data
  injectable.registerFactory<AccountDatasource>(() =>
      AccountDatasource(httpClient: injectable.get<HttpClientInterface>()));

  //// Repositories
  injectable.registerFactory<AccountRepository>(
      () => AccountRepositoryImpl(injectable.get<AccountDatasource>()));
  injectable.registerFactory<UserRepository>(() => UserRepositoryImpl());

  //// Use_cases
  injectable.registerFactory<AccountBalance>(() => const AccountBalance());
  injectable.registerFactory<SignUp>(() => SignUp(
        injectable.get<UserRepository>(),
      ));
  injectable.registerFactory<GetAccountByUserCredentials>(
      () => GetAccountByUserCredentials(injectable.get<AccountRepository>()));
  injectable.registerFactory<CreateAccount>(() => CreateAccount(
        injectable.get<AccountRepository>(),
      ));

  // Singletons
  injectable.registerLazySingleton<NavigatorInterface>(() => NavigatorImpl());
}
