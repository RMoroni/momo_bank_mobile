import 'package:flutter/material.dart';
import 'package:momo_bank_mobile/src/app/injectable/injectable.dart';
import 'package:momo_bank_mobile/src/app/navigation/navigation.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final navigator = injectable.get<NavigatorInterface>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Faça seu cadastro no banco Momo, um banco feito para gatos',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            ElevatedButton(
              onPressed: () {
                navigator.pushNamed(
                  context: context,
                  route: Routes.signUp,
                );
              },
              child: Text('Cadastre-se'),
            )
          ],
        ),
      ),
    );
  }
}
