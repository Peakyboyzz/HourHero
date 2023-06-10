import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourhero/application/auth/core/auth_bloc.dart';
import 'package:hourhero/application/auth/login_form/login_form_bloc.dart';
import 'package:hourhero/presentation/auth/login/widgets/login_form_components.dart';
import 'package:hourhero/presentation/core/constants/styles.dart';
import 'package:hourhero/presentation/core/constants/widgets.dart';
import 'package:hourhero/presentation/routes/router.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginFormBloc, LoginFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(
                    failure.map(
                      cancelledByUser: (_) => 'Cancelled',
                      serverError: (_) => 'Server Error',
                      emailAlreadyInUse: (_) => 'Email already in use',
                      invalidEmailAndPasswordCombination: (_) =>
                          'Invalid email an password combination',
                      unexpected: (_) =>
                          'Unexpected Error Occured. Please Contact Support',
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              );
            },
            (_) {
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
              context.router.replace(const AppLayoutRoute());
            },
          ),
        );
      },
      buildWhen: (previous, current) =>
          previous.isSubmitting != current.isSubmitting,
      builder: (context, state) {
        return ListView(
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
            const EmailInput(),
            16.heightBox,
            const Text("Password").text.lg.make(),
            8.heightBox,
            const PasswordInput(),
            16.heightBox,
            const LoginButton().wFull(context),
            TextButton(
              onPressed: () {},
              child: const Text("Lupa Kata Sandi?"),
            ).wFull(context),
            16.heightBox,
            const GoogleLoginButton().wFull(context),
            16.heightBox,
            TextButton(
              onPressed: () {
                context.router.push(const RegisterRoute());
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
        );
      },
    );
  }
}
