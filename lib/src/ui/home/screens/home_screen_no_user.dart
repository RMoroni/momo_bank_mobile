import 'package:flutter/material.dart';

import '../../../app/injectable/injectable.dart';
import '../../../app/navigation/navigation.dart';

class HomeScreenNoUser extends StatelessWidget {
  HomeScreenNoUser({super.key});

  final navigator = injectable.get<NavigatorInterface>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Faça seu cadastro no Momobank, um banco feito para gatos',
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
          ),
          Text('Já é nosso cliente? Então faça login na sua conta', style: Theme.of(context).textTheme.titleMedium,),
          ElevatedButton(
            onPressed: () {
              navigator.pushNamed(
                context: context,
                route: Routes.signIn,
              );
            },
            child: Text('Login'),
          ),
        ],
      ),
    );;
  }
}