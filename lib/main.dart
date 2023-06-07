import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hourhero/constants/color.dart';
import 'package:hourhero/router.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: const Color(0xFFF8F8F8),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(Vx.getColorFromHex(kPrimaryColor)),
            foregroundColor: Colors.white,
          ),
        ),
        useMaterial3: true,
      ),
      routerConfig: appRouter,
    );
  }
}
