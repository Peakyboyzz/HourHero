import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourhero/application/auth/login_form/login_form_bloc.dart';
import 'package:hourhero/injection.dart';
import 'package:hourhero/presentation/auth/login/widgets/login_form.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: BlocProvider(
        create: (context) => getIt<LoginFormBloc>(),
        child: const Scaffold(
          body: SafeArea(
            child: LoginForm(),
          ),
        ),
      ),
    );
  }
}
