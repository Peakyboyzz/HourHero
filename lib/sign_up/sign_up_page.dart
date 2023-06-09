import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:hourhero/constants/styles.dart';
import 'package:hourhero/constants/widgets.dart';
import 'package:hourhero/feature/authentication/authentication.dart';
import 'package:hourhero/router.gr.dart';
import 'package:hourhero/sign_up/cubit/sign_up_cubit.dart';
import 'package:velocity_x/velocity_x.dart' hide VxContextExtensions;

@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: BlocProvider(
        create: (_) => SignUpCubit(context.read<AuthenticationRepository>()),
        child: Scaffold(
          body: SafeArea(
            child: _RegisterForm(),
          ),
        ),
      ),
    );
  }
}

class _RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state.status.isFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(state.errorMessage ?? 'Authentication Failure'),
              ),
            );
        }

        if (state.status.isSuccess) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                backgroundColor: Colors.green,
                content: const Text('Success Register').text.white.make(),
              ),
            );
        }
      },
      child: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 36,
          vertical: 24,
        ),
        children: [
          const KLogo(),
          80.heightBox,
          Text.rich(
            TextSpan(
              children: [
                const TextSpan(text: "Mulai Petualanganmu! Daftar "),
                TextSpan(
                  text: "HourHero",
                  style: TextStyle(
                    color: Color(Vx.getColorFromHex(kPrimaryColor)),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w400,
            ),
          ),
          40.heightBox,
          const Text("Email").text.lg.make(),
          8.heightBox,
          _EmailInput(),
          16.heightBox,
          const Text("Password").text.lg.make(),
          8.heightBox,
          _PasswordInput(),
          16.heightBox,
          const Text("Confirm Password").text.lg.make(),
          8.heightBox,
          _ConfirmPasswordInput(),
          16.heightBox,
          _RegisterButton().wFull(context),
          16.heightBox,
          TextButton(
            onPressed: () {
              context.router.popAndPushAll(const [
                OnboardRoute(),
                SignInRoute(),
              ]);
            },
            child: Text.rich(
              TextSpan(
                children: [
                  const TextSpan(text: "Sudah punya akun? "),
                  TextSpan(
                    text: "Masuk",
                    style: TextStyle(
                      color: Color(Vx.getColorFromHex(kPrimaryColor)),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ).wFull(context),
        ],
      ),
    );
  }
}

class _RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        return state.status.isInProgress
            ? const Center(child: CircularProgressIndicator())
            : ElevatedButton(
                key: const Key('registerForm_continue_raisedButton'),
                onPressed: state.isValid
                    ? () => context.read<SignUpCubit>().signUpFormSubmitted()
                    : null,
                child: const Text('DAFTAR'),
              );
      },
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextFormField(
          key: const Key('registerForm_emailInput_textField'),
          onChanged: (email) => context.read<SignUpCubit>().emailChanged(email),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            labelText: "Email",
            floatingLabelBehavior: FloatingLabelBehavior.never,
            isDense: true,
            helperText: '',
            errorText:
                state.email.displayError != null ? 'invalid email' : null,
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
        buildWhen: (previous, current) => previous.password != current.password,
        builder: (context, state) {
          return TextFormField(
            key: const Key('registerForm_passwordInput_textField'),
            onChanged: (password) =>
                context.read<SignUpCubit>().passwordChanged(password),
            // obscureText: !state.password,
            obscureText: true,
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              labelText: "Password",
              floatingLabelBehavior: FloatingLabelBehavior.never,
              isDense: true,
              helperText: '',
              errorText: state.password.displayError != null
                  ? 'invalid password'
                  : null,
              // suffixIcon: IconButton(
              //   onPressed: () => context.read<SignUpCubit>().togglePassword(),
              //   icon: Icon(
              //     state.passwordVisible
              //         ? Icons.visibility_off
              //         : Icons.visibility,
              //   ),
              // ),
            ),
          );
        });
  }
}

class _ConfirmPasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.confirmedPassword != current.confirmedPassword,
      builder: (context, state) {
        return TextField(
          key: const Key('signUpForm_confirmedPasswordInput_textField'),
          onChanged: (confirmPassword) => context
              .read<SignUpCubit>()
              .confirmedPasswordChanged(confirmPassword),
          obscureText: true,
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            labelText: 'confirm password',
            floatingLabelBehavior: FloatingLabelBehavior.never,
            helperText: '',
            errorText: state.confirmedPassword.displayError != null
                ? 'passwords do not match'
                : null,
          ),
        );
      },
    );
  }
}
