import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hourhero/firebase_options.dart';
import 'package:hourhero/injection.dart';
import 'package:hourhero/presentation/core/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(AppWidget());
}
