import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hourhero/constants/assets.dart';
import 'package:hourhero/constants/styles.dart';
import 'package:hourhero/constants/widgets.dart';
import 'package:hourhero/router.gr.dart';
import 'package:velocity_x/velocity_x.dart' hide VxContextExtensions;

@RoutePage()
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool isPasswordVisible = false;

  void togglePassword() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 36,
              vertical: 24,
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
                  fontSize: 28,
                  fontWeight: FontWeight.w400,
                ),
              ),
              40.heightBox,
              Form(
                key: _formKey,
                child: VStack(
                  [
                    const Text("Email").text.lg.make(),
                    8.heightBox,
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        label: Text("Email"),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        isDense: true,
                      ),
                    ),
                    20.heightBox,
                    const Text("Password").text.lg.make(),
                    8.heightBox,
                    TextFormField(
                      controller: _passwordController,
                      obscureText: !isPasswordVisible,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        label: const Text("Password"),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        isDense: true,
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
                      onPressed: () {
                        context.router.push(const HomeRoute());
                      },
                      child: const Text("Masuk"),
                    ).wFull(context),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Lupa Kata Sandi?"),
                    ).wFull(context),
                  ],
                ),
              ),
              20.heightBox,
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
                  context.router.push(const SignUpRoute());
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
      ),
    );
  }
}
