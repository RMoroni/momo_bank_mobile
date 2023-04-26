import 'package:get_it/get_it.dart';
import 'package:momo_bank_mobile/src/app/navigation/navigator.dart';
import 'package:momo_bank_mobile/src/domain/usecases/usecases.dart';

final injectable = GetIt.instance;

void setup() {
  //Factories
  injectable.registerFactory<SignUp>(() => const SignUp());

  // Singletons
  injectable.registerLazySingleton<NavigatorInterface>(() => NavigatorImpl());
}