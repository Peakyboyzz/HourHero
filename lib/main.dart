import 'package:flutter/material.dart';
import 'package:hourhero/constants/styles.dart';
import 'package:hourhero/router.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

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
