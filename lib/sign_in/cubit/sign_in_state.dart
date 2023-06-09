part of 'sign_in_cubit.dart';

enum Status { idle, loading, success, failed }

final class SignInState extends Equatable {
  const SignInState({
    this.email = '',
    this.password = '',
    this.status = Status.idle,
    this.isValid = false,
    this.passwordVisible = false,
    this.errorMessage,
  });

  final String email;
  final String password;
  final Status status;
  final bool isValid;
  final bool passwordVisible;
  final String? errorMessage;

  SignInState copyWith({
    String? email,
    String? password,
    Status? status,
    bool? isValid,
    bool? passwordVisible,
    String? errorMessage,
  }) {
    return SignInState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
      isValid: isValid ?? this.isValid,
      passwordVisible: passwordVisible ?? this.passwordVisible,
      errorMessage: errorMessage ?? this.password,
    );
  }

  @override
  List<Object?> get props =>
      [email, password, status, isValid, passwordVisible, errorMessage];
}
