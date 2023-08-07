import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:momo_bank_mobile/src/app/injectable/injectable.dart';
import 'package:momo_bank_mobile/src/app/navigation/navigation.dart';
import 'package:momo_bank_mobile/src/controller/controllers.dart';
import 'package:momo_bank_mobile/src/ui/ui.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AccountCubit(),
      child: SafeArea(
        child: MaterialApp(
          title: 'Momobank',
          theme: ThemeData(
            primarySwatch: Colors.indigo,
          ),
          home: HomeScreen(),
          routes: Routes.routes,
        ),
      ),
    );
  }
}
