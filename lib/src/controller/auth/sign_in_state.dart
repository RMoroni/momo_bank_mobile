part of 'sign_in_cubit.dart';

class SignInState extends Equatable {
  const SignInState({this.loading = false});

  final bool loading;

  @override
  List<Object?> get props => [loading];

  SignInState copyWith({
    bool? loading,
  }) {
    return SignInState(
      loading: loading ?? this.loading,
    );
  }
}
