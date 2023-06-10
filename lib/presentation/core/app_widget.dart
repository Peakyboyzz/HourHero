import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourhero/application/auth/core/auth_bloc.dart';
import 'package:hourhero/injection.dart';
import 'package:hourhero/presentation/core/constants/styles.dart';
import 'package:hourhero/presentation/routes/router.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});

  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp.router(
        title: 'Hour Hero',
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        routerConfig: _router.config(),
        // routeInformationParser: _router.defaultRouteParser(),
        // routerDelegate: _router.delegate(),
      ),
    );
  }
}
