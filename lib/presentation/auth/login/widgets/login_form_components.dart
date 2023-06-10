import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourhero/application/auth/login_form/login_form_bloc.dart';
import 'package:hourhero/presentation/core/constants/assets.dart';
import 'package:velocity_x/velocity_x.dart';

class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      key: const Key('loginForm_googleLogin_raisedButton'),
      onPressed: () => context
          .read<LoginFormBloc>()
          .add(const LoginFormEvent.loginWithGooglePressed()),
      icon: iconGoogle.circularAssetImage(
        bgColor: Colors.transparent,
        radius: 8,
      ),
      label: const Text("Login dengan Google"),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: const Key('loginForm_continue_raisedButton'),
      onPressed: () {
        context
            .read<LoginFormBloc>()
            .add(const LoginFormEvent.loginWithEmailAndPasswordPressed());
      },
      child: const Text('LOGIN'),
    );
  }
}

class EmailInput extends StatelessWidget {
  const EmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: const Key('loginForm_emailInput_textField'),
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        labelText: "Email",
        floatingLabelBehavior: FloatingLabelBehavior.never,
        isDense: true,
        helperText: '',
      ),
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      onChanged: (value) {
        context.read<LoginFormBloc>().add(LoginFormEvent.emailChanged(value));
      },
      validator: (_) {
        return context.read<LoginFormBloc>().state.emailAddress.value.fold(
              (l) => l.maybeMap(
                invalidEmail: (_) => 'Invalid Email',
                orElse: () => null,
              ),
              (r) => null,
            );
      },
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: const Key('loginForm_passwordInput_textField'),
      obscureText: true,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        labelText: "Password",
        floatingLabelBehavior: FloatingLabelBehavior.never,
        isDense: true,
        helperText: '',
        // suffixIcon: IconButton(
        //   onPressed: () => context.read<SignInCubit>().togglePassword(),
        //   icon: Icon(
        //     state.passwordVisible
        //         ? Icons.visibility_off
        //         : Icons.visibility,
        //   ),
        // ),
      ),
      autocorrect: false,
      onChanged: (value) {
        context
            .read<LoginFormBloc>()
            .add(LoginFormEvent.passwordChanged(value));
      },
      validator: (_) {
        return context.read<LoginFormBloc>().state.password.value.fold(
              (l) => l.maybeMap(
                shortPassword: (_) => 'Invalid Password',
                orElse: () => null,
              ),
              (r) => null,
            );
      },
    );
  }
}
