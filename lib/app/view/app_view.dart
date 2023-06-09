import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourhero/app/app.dart';
import 'package:hourhero/constants/styles.dart';
import 'package:hourhero/feature/authentication/repositories/authentication_repository.dart';
import 'package:hourhero/router.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required AuthenticationRepository authenticationRepository,
  }) : _authenticationRepository = authenticationRepository;

  final AuthenticationRepository _authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _authenticationRepository,
      child: BlocProvider(
        create: (_) => AppBloc(
          authenticationRepository: _authenticationRepository,
        ),
        child: BlocBuilder<AppBloc, AppState>(
            buildWhen: (previous, current) => previous.status != current.status,
            builder: (context, state) {
              return AppView(
                status: state.status,
              );
            }),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  AppView({super.key, required AppStatus status})
      : _appRouter = AppRouter(status == AppStatus.authenticated);

  final AppRouter _appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      routerConfig: _appRouter.config(),
    );
  }
}
