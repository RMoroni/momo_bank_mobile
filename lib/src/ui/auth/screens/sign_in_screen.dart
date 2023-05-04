import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:momo_bank_mobile/src/app/app.dart';
import 'package:momo_bank_mobile/src/controller/controllers.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SignInCubit(),
      child: const SignInContent(),
    );
  }
}

class SignInContent extends StatefulWidget {
  const SignInContent({super.key});

  @override
  State<StatefulWidget> createState() => _SignInState();
}

class _SignInState extends State<SignInContent> {
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final navigator = injectable.get<NavigatorInterface>();

  // SignInCubit get _cubit => BlocProvider.of<SignInCubit>(context);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Tela de login'),
    );
  }
}
