import '../../domain.dart';

class Account {
  final String agencyNumber = '00001';
  final String accountNumber;
  final User user;

  const Account({
    required this.accountNumber,
    required this.user,
  });
}

extension AccountExtension on Account {
  static Account fromJson(Map<String, dynamic> json) {
    return Account(
      accountNumber: json['accountNumber'],
      user: UserExtension.fromJson(json['user']),
    );
  }
}
