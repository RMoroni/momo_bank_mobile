part of 'user_cubit.dart';

class UserState extends Equatable {
  @override
  List<Object?> get props => [];
}

class UserLoggedState extends UserState {
  final User user;

  UserLoggedState(this.user);

  @override
  List<Object?> get props => [user];
}