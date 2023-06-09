import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourhero/feature/authentication/authentication.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this._authenticationRepository) : super(const SignInState());

  final AuthenticationRepository _authenticationRepository;

  void emailChanged(String value) {
    emit(state.copyWith(email: value));
  }

  void passwordChanged(String value) {
    emit(state.copyWith(password: value));
  }

  void togglePassword() {
    emit(state.copyWith(passwordVisible: !state.passwordVisible));
  }

  void reset() {
    emit(state.copyWith(status: Status.idle));
  }

  Future<void> loginWithCredential() async {
    emit(state.copyWith(status: Status.loading));
    try {
      await _authenticationRepository.loginWithEmailAndPassword(
        email: state.email,
        password: state.password,
      );
      emit(state.copyWith(status: Status.success));
    } on LogInWithEmailAndPasswordFailure catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.message,
          status: Status.failed,
        ),
      );
    } catch (_) {
      emit(state.copyWith(status: Status.failed));
    }
  }

  Future<void> logInWithGoogle() async {
    emit(state.copyWith(status: Status.loading));
    try {
      await _authenticationRepository.loginWithGoogle();
      emit(state.copyWith(status: Status.success));
    } on LogInWithGoogleFailure catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.message,
          status: Status.failed,
        ),
      );
    } catch (_) {
      emit(state.copyWith(status: Status.failed));
    }
  }
}
