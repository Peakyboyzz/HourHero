import 'package:flutter/material.dart';
import 'package:hourhero/constants/assets.dart';
import 'package:hourhero/constants/styles.dart';
import 'package:hourhero/constants/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isPasswordVisible = false;
  bool isPasswordConfirmationVisible = false;

  void togglePassword() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  void togglePasswordConfirmation() {
    setState(() {
      isPasswordConfirmationVisible = !isPasswordConfirmationVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 32,
          ),
          children: [
            const KLogo(),
            80.heightBox,
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(text: "Daftar "),
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
                fontSize: 34,
                fontWeight: FontWeight.w400,
              ),
            ),
            40.heightBox,
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Nama"),
                    ),
                  ),
                  20.heightBox,
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Email"),
                    ),
                  ),
                  20.heightBox,
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Nomor Telfon"),
                    ),
                  ),
                  20.heightBox,
                  TextFormField(
                    obscureText: !isPasswordVisible,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      label: const Text("Password"),
                      suffixIcon: IconButton(
                        onPressed: togglePassword,
                        icon: Icon(
                          isPasswordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                  ),
                  20.heightBox,
                  TextFormField(
                    obscureText: !isPasswordConfirmationVisible,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      label: const Text("Konfirmasi Password"),
                      suffixIcon: IconButton(
                        onPressed: togglePasswordConfirmation,
                        icon: Icon(
                          isPasswordConfirmationVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                  ),
                  20.heightBox,
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Daftar"),
                  ).wFull(context),
                ],
              ),
            ),
            40.heightBox,
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(text: "Sudah memiliki akun? "),
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
        ),
      ),
    );
  }
}
