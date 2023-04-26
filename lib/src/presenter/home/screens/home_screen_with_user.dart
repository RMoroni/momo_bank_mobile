import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:momo_bank_mobile/src/presenter/auth/controllers/user_cubit.dart';

class HomeScreenWithUser extends StatelessWidget {
  const HomeScreenWithUser({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<UserCubit>(context);
    final user = (cubit.state as UserLoggedState).user;
    return Scaffold(
      body: Text('Olá ${user.name}'),
    );
  }
}