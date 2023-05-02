part of 'sign_up_cubit.dart';

class SignUpState extends Equatable {
  const SignUpState({
    this.loading = false,
  });

  final bool loading;

  @override
  List<Object?> get props => [loading];

  SignUpState copyWith({
    bool? loading,
  }) {
    return SignUpState(
      loading: loading ?? this.loading,
    );
  }
}
