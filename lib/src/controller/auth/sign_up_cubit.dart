import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:momo_bank_mobile/src/app/injectable/injectable.dart';
import 'package:momo_bank_mobile/src/domain/domain.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit({
    CreateAccountAndUser? createAccountAndUser,
  })  : _createAccountAndUser = createAccountAndUser ?? injectable.get<CreateAccountAndUser>(),
        super(const SignUpState());

  final CreateAccountAndUser _createAccountAndUser;
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
    final response = await _createAccountAndUser(user, passwordController.text);
    response.fold((l) => null, (r) => onSuccessCallback(r));
    emit(state.copyWith(loading: false));
  }
}
