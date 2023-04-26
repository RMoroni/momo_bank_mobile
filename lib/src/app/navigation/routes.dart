import 'package:momo_bank_mobile/src/presenter/presenter.dart';

class Routes {
  static const home = '/home';
  static const signUp = '/sign-up';

  static final routes = {
    Routes.home: (_) => HomeScreen(),
    Routes.signUp: (_) => const SignUpScreen(),
  };
}