import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../controller/controllers.dart';
import '../../ui.dart';

class HomeScreenWithUser extends StatelessWidget {
  const HomeScreenWithUser({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<AccountCubit>(context);
    final state = (cubit.state as LoadedAccountState);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Olá ${state.account.user.name}',
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 8,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Saldo em Conta',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      '\$ ${state.balance} momos',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                ),
              ],
            ),
            const SizedBox(height: 16,),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.currency_exchange),
                  tooltip: 'Transferir momos',
                  iconSize: 36,
                ),
                const SizedBox(width: 8,),
                IconButton(
                  onPressed: () {
                    showModalBottomSheet(context: context, builder: (BuildContext context){
                      return AccountInformationBottomSheet(account: state.account);
                    });
                  },
                  icon: const Icon(Icons.info_outline),
                  tooltip: 'Informações sobre sua conta',
                  iconSize: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
