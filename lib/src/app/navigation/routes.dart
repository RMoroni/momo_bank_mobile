import 'package:momo_sama_bank/src/presenter/presenter.dart';

class Routes {
  static const home = '/home';
  static const signUp = '/sign-up';

  static final routes = {
    Routes.home: (_) => HomeScreen(),
    Routes.signUp: (_) => const SignUpScreen(),
  };
}