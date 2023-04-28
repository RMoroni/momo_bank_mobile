class HttpClientResponse {
  const HttpClientResponse({
    required this.body,
    required this.code,
  });

  final Map<String, dynamic> body;
  final String code;
}
