import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:momo_bank_mobile/src/app/injectable/injectable.dart';
import 'package:momo_bank_mobile/src/app/navigation/navigation.dart';
import 'package:momo_bank_mobile/src/presenter/shared/controllers/account_cubit.dart';
import 'package:momo_bank_mobile/src/presenter/home/screens/home_screen_no_user.dart';
import 'package:momo_bank_mobile/src/presenter/home/screens/home_screen_with_user.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final navigator = injectable.get<NavigatorInterface>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AccountCubit, AccountState>(
        builder: (context, state) {
          if (state is LoadedAccountState) {
            return const HomeScreenWithUser();
          } else if (state is LoadingAccountState) {
            return const CircularProgressIndicator();
          } else if (state is ErrorAccountState) {
            return const Text('Error');
          } else {
            return HomeScreenNoUser();
          }
        }
      ),
    );
  }
}
