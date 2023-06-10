import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourhero/application/auth/register_form/register_form_bloc.dart';
import 'package:hourhero/injection.dart';
import 'package:hourhero/presentation/auth/register/widgets/register_form.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: BlocProvider(
        create: (context) => getIt<RegisterFormBloc>(),
        child: const Scaffold(
          body: SafeArea(
            child: RegisterForm(),
          ),
        ),
      ),
    );
  }
}
