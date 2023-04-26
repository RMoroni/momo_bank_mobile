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
      appBar: AppBar(
        title: Text(
          'Olá ${user.name}',
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
                      '\$ 106 momos',
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
                  icon: Icon(Icons.currency_exchange),
                  tooltip: 'Transferir momos',
                  iconSize: 36,
                ),
                const SizedBox(width: 8,),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.info_outline),
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
