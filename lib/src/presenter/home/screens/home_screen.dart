import 'package:flutter/material.dart';
import 'package:ryuk_bank_mobile/src/app/injectable/injectable.dart';
import 'package:ryuk_bank_mobile/src/app/navigation/navigator.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final navigator = injectable.get<NavigatorInterface>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Home Page'),
          ElevatedButton(
            onPressed: () {
              navigator.pop(context: context);
            },
            child: Text('Voltar'),
          )
        ],
      ),
    );
  }
}
