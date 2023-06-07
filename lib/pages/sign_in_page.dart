import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hourhero/constants/assets.dart';
import 'package:hourhero/constants/color.dart';
import 'package:hourhero/constants/widgets.dart';
import 'package:velocity_x/velocity_x.dart' hide VxContextExtensions;

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isPasswordVisible = false;

  void togglePassword() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
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
                  const TextSpan(text: "Mulai Petualanganmu! Login ke "),
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
                      label: Text("Email"),
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
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Masuk"),
                  ).wFull(context),
                  20.heightBox,
                  TextButton(
                    onPressed: () {},
                    child: const Text("Lupa Kata Sandi?"),
                  ),
                ],
              ),
            ),
            40.heightBox,
            OutlinedButton.icon(
              onPressed: () {},
              icon: iconGoogle.circularAssetImage(
                bgColor: Colors.transparent,
                radius: 8,
              ),
              label: const Text("Login dengan Google"),
            ).wFull(context),
            20.heightBox,
            TextButton(
              onPressed: () {
                context.push('/sign-up');
              },
              child: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(text: "Belum punya akun? "),
                    TextSpan(
                      text: "Daftar",
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
