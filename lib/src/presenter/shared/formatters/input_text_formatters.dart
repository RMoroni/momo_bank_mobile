import 'package:flutter/services.dart';

class DateFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String unmaskedText = newValue.text.replaceAll(RegExp(r'[^\d]'), '');

    String maskedText = '';
    for (int i = 0; i < unmaskedText.length; i++) {
      if (i == 2 || i == 4) {
        maskedText += '/';
      }
      maskedText += unmaskedText[i];
    }

    return TextEditingValue(
      text: maskedText,
      selection: TextSelection.collapsed(offset: maskedText.length),
    );
  }
}
