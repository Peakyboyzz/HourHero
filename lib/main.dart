import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hourhero/feature/authentication/authentication.dart';
import 'package:hourhero/firebase_options.dart';

import 'app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final authenticationRepository = AuthenticationRepository();
  await authenticationRepository.user.first;

  runApp(App(
    authenticationRepository: authenticationRepository,
  ));
}
