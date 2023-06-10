import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourhero/application/auth/core/auth_bloc.dart';
import 'package:hourhero/application/auth/register_form/register_form_bloc.dart';
import 'package:hourhero/presentation/auth/register/widgets/register_components.dart';
import 'package:hourhero/presentation/core/constants/styles.dart';
import 'package:hourhero/presentation/core/constants/widgets.dart';
import 'package:hourhero/presentation/routes/router.dart';
import 'package:velocity_x/velocity_x.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterFormBloc, RegisterFormState>(
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
              context.router.replace(const LoginRoute());
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
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
            const Text("Name").text.lg.make(),
            8.heightBox,
            const NameInput(),
            16.heightBox,
            const Text("Phone").text.lg.make(),
            8.heightBox,
            const PhoneInput(),
            16.heightBox,
            const Text("Email").text.lg.make(),
            8.heightBox,
            const EmailInput(),
            16.heightBox,
            const EmailInput(),
            16.heightBox,
            const Text("Password").text.lg.make(),
            8.heightBox,
            const PasswordInput(),
            16.heightBox,
            const RegisterButton().wFull(context),
            if (state.isSubmitting) ...[
              16.heightBox,
              const LinearProgressIndicator(),
            ],
            16.heightBox,
            TextButton(
              onPressed: () {
                context.router.popAndPushAll(const [
                  OnboardRoute(),
                  LoginRoute(),
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
        );
      },
    );
  }
}
