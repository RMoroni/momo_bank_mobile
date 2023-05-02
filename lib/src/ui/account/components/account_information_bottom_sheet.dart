import 'package:flutter/material.dart';

import '../../../domain/domain.dart';

class AccountInformationBottomSheet extends StatelessWidget {
  const AccountInformationBottomSheet({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 8,
      ),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 8,
            color: Colors.black,
          ),
        ),
      ),
      child: Column(
        children: [
          Text(
            'Titular: ${account.user.name}',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          Text(
            'Agência: ${account.agencyNumber}',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          Text(
            'Conta: ${account.accountNumber}',
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ],
      ),
    );
  }
}
