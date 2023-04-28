import 'dart:io';

import 'package:momo_bank_mobile/src/app/http/http_client.dart';

void main() async {
  HttpClientImpl teste = HttpClientImpl();
  final result = await teste.get('http://localhost:3000/users');
  result.fold((l) => null, (response) {
    print(response.body);
    print(response.code);
  });
  exit(0);
}