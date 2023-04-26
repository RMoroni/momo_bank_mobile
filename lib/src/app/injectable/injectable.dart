import 'package:get_it/get_it.dart';
import 'package:momo_sama_bank/src/app/navigation/navigator.dart';

final injectable = GetIt.instance;

void setup() {
  //Factories

  // Singletons
  injectable.registerLazySingleton<NavigatorInterface>(() => NavigatorImpl());
}