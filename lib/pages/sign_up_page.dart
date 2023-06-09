import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hourhero/constants/styles.dart';
import 'package:hourhero/constants/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmationController = TextEditingController();
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
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 36,
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
                  fontSize: 28,
                  fontWeight: FontWeight.w400,
                ),
              ),
              40.heightBox,
              Form(
                key: _formKey,
                child: VStack(
                  [
                    const Text("Nama").text.lg.make(),
                    8.heightBox,
                    TextFormField(
                      controller: _nameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        isDense: true,
                        label: Text("Nama"),
                      ),
                    ),
                    20.heightBox,
                    const Text("Email").text.lg.make(),
                    8.heightBox,
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        isDense: true,
                        label: Text("Email"),
                      ),
                    ),
                    20.heightBox,
                    const Text("Nomor Telpon").text.lg.make(),
                    8.heightBox,
                    TextFormField(
                      controller: _phoneController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        isDense: true,
                        label: Text("Nomor Telpon"),
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
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        isDense: true,
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
                    const Text("Konfirmasi").text.lg.make(),
                    8.heightBox,
                    TextFormField(
                      controller: _passwordConfirmationController,
                      obscureText: !isPasswordConfirmationVisible,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        isDense: true,
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
              20.heightBox,
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
      ),
    );
  }
}
