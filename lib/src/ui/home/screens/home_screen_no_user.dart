import 'package:flutter/material.dart';

import '../../../app/injectable/injectable.dart';
import '../../../app/navigation/navigation.dart';

class HomeScreenNoUser extends StatelessWidget {
  HomeScreenNoUser({super.key});

  final navigator = injectable.get<NavigatorInterface>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Icons.catching_pokemon,
              size: 64,
              color: Theme.of(context).primaryColor,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              Text(
                'Um banco feito para gatos',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 16,),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        navigator.pushNamed(
                          context: context,
                          route: Routes.signUp,
                        );
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                      ),
                      child: const Text('Cadastre-se'),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  navigator.pushNamed(
                    context: context,
                    route: Routes.signIn,
                  );
                },
                child: const Text('Entrar na minha conta'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
