String? emailValidator(String? textInput) {
  if (textInput == null || textInput.isEmpty) {
    return 'Insira seu email';
  } else if (!textInput.contains('@')) {
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
  } else if (textInput.length < 11) {
    return 'Insira um CPF válido';
  }
  return validateBrazilianDocument(textInput) ? null : 'Insira um CPF';
}

String? phoneValidator(String? textInput) {
  if (textInput == null || textInput.isEmpty) {
    return 'Insira seu celular';
  }
  return null;
}

String? birthDateValidator(String? textInput) {
  if (textInput != null && textInput.isNotEmpty) {
    if (textInput.length < 10) {
      return 'Insira uma data válida';
    }
  }
  return null;
}

bool validateBrazilianDocument(String documentNumber) {
  // documentNumber = documentNumber.replaceAll(RegExp(r'[^\d]'), '');
  // if (documentNumber.length != 11) return false;
  // int soma = 0;
  // for (int i = 0; i < 9; i++) {
  //   soma += int.parse(documentNumber[i]) * (10 - i);
  // }
  // int digit1 = 11 - (soma % 11);
  // if (digit1 > 9) digit1 = 0;
  //
  // soma = 0;
  // for (int i = 0; i < 10; i++) {
  //   soma += int.parse(documentNumber[i]) * (11 - i);
  // }
  // soma += digit1 * 2;
  // int digit2 = 11 - (soma % 11);
  // if (digit2 > 9) digit2 = 0;
  //
  // if (int.parse(documentNumber[9]) != digit2) return false;
  // if (int.parse(documentNumber[10]) != digit2) return false;

  return true;
}
