import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hourhero/constants/assets.dart';
import 'package:hourhero/constants/styles.dart';
import 'package:velocity_x/velocity_x.dart' hide VxContextExtensions;

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.height,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(bgSplashImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Color(Vx.getColorFromHex(kBaseColor)),
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.5),
                  Color(Vx.getColorFromHex(kPrimaryColor)).withOpacity(0.3),
                ],
                stops: const [0.2, 1.0],
              ),
            ),
          ),
          SafeArea(
            child: VStack(
              [
                "Selamat Datang".text.white.xl4.bold.make(),
                "HourHero: Solusi pencarian kerja part-time yang tepat di ujung jari."
                    .text
                    .white
                    .make(),
                28.heightBox,
                ElevatedButton(
                  onPressed: () {
                    context.push('/sign-in');
                  },
                  child: const Text("Masuk"),
                ).wFull(context),
                16.heightBox,
                OutlinedButton(
                  onPressed: () {
                    context.go('/sign-up');
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Buat Akun"),
                ).wFull(context),
              ],
            ).pSymmetric(h: 24, v: 32).objectBottomLeft(),
          ),
        ],
      ),
    );
  }
}
