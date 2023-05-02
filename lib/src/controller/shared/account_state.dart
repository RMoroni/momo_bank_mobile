part of 'account_cubit.dart';

class AccountState extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadingAccountState extends AccountState {}

class ErrorAccountState extends AccountState {}

class LoadedAccountState extends AccountState {
  final Account account;
  final num balance;

  // TODO add bank transactions

  LoadedAccountState({
    required this.account,
    required this.balance,
  });

  @override
  List<Object?> get props => [account];
}
