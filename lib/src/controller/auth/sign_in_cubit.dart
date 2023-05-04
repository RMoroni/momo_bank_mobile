import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:momo_bank_mobile/src/app/app.dart';
import 'package:momo_bank_mobile/src/domain/domain.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit({GetAccountByUserCredentials? getAccountByUserCredentials})
      : _getAccountByUserCredentials = getAccountByUserCredentials ?? injectable.get<GetAccountByUserCredentials>(),
        super(const SignInState());

  final GetAccountByUserCredentials _getAccountByUserCredentials;
  final TextEditingController documentNumberController =
      TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signInSubmit(void Function(Account) onSuccessCallback) async {
    emit(state.copyWith(loading: true));
    final response = await _getAccountByUserCredentials(
      documentNumberController.text,
      passwordController.text,
    );
    response.fold((l) => null, (account) {
      onSuccessCallback(account);
    });
    emit(state.copyWith(loading: false));
  }
}
