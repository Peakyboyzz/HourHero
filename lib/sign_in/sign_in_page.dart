import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourhero/constants/assets.dart';
import 'package:hourhero/constants/styles.dart';
import 'package:hourhero/constants/widgets.dart';
import 'package:hourhero/feature/authentication/authentication.dart';
import 'package:hourhero/router.gr.dart';
import 'package:hourhero/sign_in/cubit/sign_in_cubit.dart';
import 'package:velocity_x/velocity_x.dart' hide VxContextExtensions;

@RoutePage()
class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: BlocProvider(
        create: (_) => SignInCubit(context.read<AuthenticationRepository>()),
        child: Scaffold(
          body: SafeArea(
            child: _LoginForm(),
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state.status == Status.failed) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(state.errorMessage ?? 'Authentication Failure'),
              ),
            );
          context.read<SignInCubit>().reset();
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
                const TextSpan(text: "Mulai Petualanganmu! Login ke "),
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
          20.heightBox,
          const Text("Password").text.lg.make(),
          8.heightBox,
          _PasswordInput(),
          20.heightBox,
          _LoginButton().wFull(context),
          TextButton(
            onPressed: () {},
            child: const Text("Lupa Kata Sandi?"),
          ).wFull(context),
          20.heightBox,
          _GoogleLoginButton().wFull(context),
          20.heightBox,
          TextButton(
            onPressed: () {
              context.router.push(const SignUpRoute());
            },
            child: Text.rich(
              TextSpan(
                children: [
                  const TextSpan(text: "Belum punya akun? "),
                  TextSpan(
                    text: "Daftar",
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

class _GoogleLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      key: const Key('loginForm_googleLogin_raisedButton'),
      onPressed: () => context.read<SignInCubit>().logInWithGoogle(),
      icon: iconGoogle.circularAssetImage(
        bgColor: Colors.transparent,
        radius: 8,
      ),
      label: const Text("Login dengan Google"),
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInCubit, SignInState>(
      builder: (context, state) {
        return state.status == Status.loading
            ? const Center(child: CircularProgressIndicator())
            : ElevatedButton(
                key: const Key('loginForm_continue_raisedButton'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: const Color(0xFFFFD600),
                ),
                onPressed: state.isValid
                    ? () => context.read<SignInCubit>().loginWithCredential()
                    : null,
                child: const Text('LOGIN'),
              );
      },
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInCubit, SignInState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextFormField(
          key: const Key('loginForm_emailInput_textField'),
          onChanged: (email) => context.read<SignInCubit>().emailChanged(email),
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            label: Text("Email"),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            isDense: true,
            helperText: '',
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInCubit, SignInState>(
        buildWhen: (previous, current) =>
            previous.password != current.password ||
            previous.passwordVisible != current.passwordVisible,
        builder: (context, state) {
          return TextFormField(
            key: const Key('loginForm_passwordInput_textField'),
            onChanged: (password) =>
                context.read<SignInCubit>().passwordChanged(password),
            obscureText: !state.passwordVisible,
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              label: const Text("Password"),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              isDense: true,
              helperText: '',
              suffixIcon: IconButton(
                onPressed: () => context.read<SignInCubit>().togglePassword(),
                icon: Icon(
                  state.passwordVisible
                      ? Icons.visibility_off
                      : Icons.visibility,
                ),
              ),
            ),
          );
        });
  }
}
