class User {
  final String? id;
  final String name;
  final String documentNumber;
  final String email;
  final String? phone;
  final DateTime birthDate;

  const User({
    this.id,
    required this.name,
    required this.documentNumber,
    required this.email,
    this.phone,
    required this.birthDate,
  });
}
