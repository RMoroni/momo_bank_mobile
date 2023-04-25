import 'package:ryuk_bank_mobile/src/presenter/presenter.dart';

class Routes {
  static const home = '/home';
  static const signUp = '/sign-up';

  static final routes = {
    Routes.home: (context) => HomeScreen(),
    Routes.signUp: (context) => const SignUpScreen(),
  };
}