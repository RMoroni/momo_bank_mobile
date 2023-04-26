import 'package:flutter/material.dart';
import 'package:momo_sama_bank/src/app/injectable/injectable.dart';
import 'package:momo_sama_bank/src/app/navigation/navigation.dart';
import 'package:momo_sama_bank/src/presenter/home/screens/home_screen.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ryuk Bank SA',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomeScreen(),
      routes: Routes.routes,
    );
  }
}
