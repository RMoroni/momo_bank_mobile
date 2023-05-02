import 'package:get_it/get_it.dart';
import 'package:momo_bank_mobile/src/app/app.dart';
import 'package:momo_bank_mobile/src/domain/usecases/usecases.dart';

final injectable = GetIt.instance;

void setup() {
  // Factories
  injectable.registerFactory<AccountBalance>(() => const AccountBalance());
  injectable.registerFactory<GetAccountByUser>(() => const GetAccountByUser());
  injectable.registerFactory<HttpClientInterface>(() => HttpClientImpl());
  injectable.registerFactory<SignIn>(() => const SignIn());
  injectable.registerFactory<SignUp>(() => const SignUp());

  // Singletons
  injectable.registerLazySingleton<NavigatorInterface>(() => NavigatorImpl());
}