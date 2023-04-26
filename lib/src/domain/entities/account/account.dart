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
