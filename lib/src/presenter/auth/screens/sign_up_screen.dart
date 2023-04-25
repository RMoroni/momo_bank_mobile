import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ryuk_bank_mobile/src/app/injectable/injectable.dart';
import 'package:ryuk_bank_mobile/src/app/navigation/navigation.dart';
import 'package:ryuk_bank_mobile/src/presenter/auth/auth.dart';
import 'package:ryuk_bank_mobile/src/presenter/shared/shared.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SignUpCubit(const SignUpState()),
      child: const SignUpContent(),
    );
  }
}

class SignUpContent extends StatefulWidget {
  const SignUpContent({super.key});

  @override
  State<StatefulWidget> createState() => _SignUpContentState();
}

class _SignUpContentState extends State<SignUpContent> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final navigator = injectable.get<NavigatorInterface>();

  SignUpCubit get _cubit => BlocProvider.of<SignUpCubit>(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastre-se'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            navigator.pop(context: context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  controller: _cubit.nameController,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    hintText: 'Nome *',
                  ),
                  validator: (String? value) => nameValidator(value),
                ),
                const SizedBox(height: 16,),
                TextFormField(
                  controller: _cubit.documentNumberController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'CPF *',
                  ),
                  validator: (String? value) => documentNumberValidator(value),
                ),
                const SizedBox(height: 16,),
                TextFormField(
                  controller: _cubit.emailController,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    hintText: 'Email *',
                  ),
                  validator: (String? value) => emailValidator(value),
                ),
                const SizedBox(height: 16,),
                TextFormField(
                  controller: _cubit.phoneController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Celular *',
                  ),
                  validator: (String? value) => phoneValidator(value),
                ),
                const SizedBox(height: 16,),
                TextFormField(
                  controller: _cubit.birthDateController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Data de nascimento',
                  ),
                  validator: (String? value) => birthDateValidator(value),
                ),
                const SizedBox(height: 32,),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: _submit,
                        child: const Text('Cadastrar'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      // Process data.
    }
  }
}