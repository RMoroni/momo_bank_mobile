import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:momo_bank_mobile/src/app/environment/environment_keys.dart';

String hashText(String text) {
  final input = utf8.encode('$text-${EnvironmentKeys.passwordSalt}');
  return sha256.convert(input).toString();
}