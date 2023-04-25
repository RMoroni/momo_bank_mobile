String? emailValidator(String? textInput) {
  if (textInput == null || textInput.isEmpty) {
    return 'Insira seu email';
  } else if (!textInput.contains('@') && !textInput.contains('.')) {
    return 'Insira um email válido';
  }
  return null;
}

String? nameValidator(String? textInput) {
  if (textInput == null || textInput.isEmpty) {
    return 'Insira seu nome';
  }
  return null;
}

String? documentNumberValidator(String? textInput) {
  if (textInput == null || textInput.isEmpty) {
    return 'Insira seu CPF';
  }
  return null;
}

String? phoneValidator(String? textInput) {
  if (textInput == null || textInput.isEmpty) {
    return 'Insira seu celular';
  }
  return null;
}

String? birthDateValidator(String? textInput) {
  if (textInput == null || textInput.isEmpty) {
    return 'Insira sua data de nascimento';
  }
  return null;
}