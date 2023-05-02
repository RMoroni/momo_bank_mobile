import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:momo_bank_mobile/src/app/injectable/injectable.dart';
import 'package:momo_bank_mobile/src/domain/domain.dart';

part 'account_state.dart';

class AccountCubit extends Cubit<AccountState> {
  AccountCubit({
    AccountBalance? accountBalance,
    GetAccountByUser? getAccountByUser,
  })  : _accountBalance = accountBalance ?? injectable.get<AccountBalance>(),
        _getAccountByUser = getAccountByUser ?? injectable.get<GetAccountByUser>(),
        super(AccountState());

  final AccountBalance _accountBalance;
  final GetAccountByUser _getAccountByUser;

  void setAccountFromUser(User user) async {
    emit(LoadingAccountState());
    final accountResponse = await _getAccountByUser(user);
    accountResponse.fold((l) {
      // TODO handle error
      emit(ErrorAccountState());
    }, (account) async {
      final balanceResponse = await _accountBalance(account);
      balanceResponse.fold((l) {
        // TODO handle error
        emit(ErrorAccountState());
      }, (balance) {
        emit(LoadedAccountState(account: account, balance: balance));
      });
    });
  }
}
