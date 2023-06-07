import 'package:flutter/material.dart';
import 'package:hourhero/constants/color.dart';
import 'package:velocity_x/velocity_x.dart';

class KLogo extends StatelessWidget {
  const KLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          const TextSpan(text: "Hour"),
          TextSpan(
              text: "Hero",
              style: TextStyle(
                color: Color(
                  Vx.getColorFromHex(kPrimaryColor),
                ),
              )),
        ],
      ),
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
