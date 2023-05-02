import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:momo_bank_mobile/src/app/app.dart';
import 'package:momo_bank_mobile/src/domain/domain.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit({SignIn? signIn})
      : _signIn = signIn ?? injectable.get<SignIn>(),
        super(const SignInState());

  final SignIn _signIn;
  final TextEditingController documentNumberController =
      TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signInSubmit(void Function(User) onSuccessCallback) async {
    emit(state.copyWith(loading: true));
    final response = await _signIn(
      documentNumberController.text,
      passwordController.text,
    );
    response.fold((l) => null, (user) {
      onSuccessCallback(user);
    });
    emit(state.copyWith(loading: false));
  }
}
