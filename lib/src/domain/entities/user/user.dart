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
}

extension UserExtension on User {
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

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'documentNumber': documentNumber,
      'email': email,
      'phone': phone,
      if (birthDate != null) 'birthDate': birthDate!.toIso8601String(),
    };
  }

  static User fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'] ?? '',
      documentNumber: json['documentNumber'] ?? '',
      email: json['email'] ?? '',
      phone: json['phone'] ?? '',
      birthDate: json['birthDate'] != null ? DateTime.parse(json['birthDate']) : null,
    );
  }
}
