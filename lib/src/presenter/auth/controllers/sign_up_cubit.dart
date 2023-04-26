import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:momo_bank_mobile/src/app/injectable/injectable.dart';
import 'package:momo_bank_mobile/src/domain/domain.dart';
import 'package:momo_bank_mobile/src/domain/usecases/usecases.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit({
    SignUp? signUpUsecase,
  })  : _signUpUsecase = signUpUsecase ?? injectable.get<SignUp>(),
        super(const SignUpState());

  final SignUp _signUpUsecase;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController documentNumberController =
      TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signUpSubmit(void Function(User) onSuccessCallback) async {
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
    final response = await _signUpUsecase(user, passwordController.text);
    response.fold((l) => null, (r) => onSuccessCallback(r));
    emit(state.copyWith(loading: false));
  }
}
