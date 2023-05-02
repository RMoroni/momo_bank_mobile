import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:momo_bank_mobile/src/app/injectable/injectable.dart';
import 'package:momo_bank_mobile/src/app/navigation/navigation.dart';

import '../../../controller/controllers.dart';
import '../../ui.dart';

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
