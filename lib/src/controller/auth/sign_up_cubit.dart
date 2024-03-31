import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:momo_bank_mobile/src/app/injectable/injectable.dart';
import 'package:momo_bank_mobile/src/domain/domain.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit({
    CreateAccount? createAccountAndUser,
    SignUp? signUp
  })  : _createAccount = createAccountAndUser ?? injectable.get<CreateAccount>(),
        _signUp = signUp ?? injectable.get<SignUp>(),
        super(const SignUpState());

  final CreateAccount _createAccount;
  final SignUp _signUp;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController documentNumberController =
      TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signUpSubmit(void Function(Account) onSuccessCallback) async {
    emit(state.copyWith(loading: true));
    final user = User(
      name: nameController.text,
      documentNumber: documentNumberController.text,
      email: emailController.text,
      phone: phoneController.text,
      birthDate: birthDateController.text.isEmpty
          ? null
          : DateTime.parse(birthDateController.text),
    );
    final userResponse = await _signUp(user, passwordController.text);
    userResponse.fold((l) => print('User error'), (r) async {
      final response = await _createAccount(r);
      response.fold((l) => print('Account error'), (r) => onSuccessCallback(r));
    }); // TODO: handle errors
    emit(state.copyWith(loading: false)); //TODO: loading finish before navigation
  }
}
