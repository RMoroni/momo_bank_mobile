class User {
  final String? id;
  final String name;
  final String documentNumber;
  final String email;
  final String phone;
  final DateTime? birthDate;

  const User({
    this.id,
    required this.name,
    required this.documentNumber,
    required this.email,
    required this.phone,
    this.birthDate,
  });

  User copyWith({
    String? id,
    String? name,
    String? documentNumber,
    String? email,
    String? phone,
    DateTime? birthDate,
  }) {
    return User(
      name: name ?? this.name,
      documentNumber: documentNumber ?? this.documentNumber,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      birthDate: birthDate ?? this.birthDate,
    );
  }
}
