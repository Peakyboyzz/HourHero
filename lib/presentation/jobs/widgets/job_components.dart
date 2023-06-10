import 'package:flutter/material.dart';
import 'package:hourhero/presentation/core/constants/styles.dart';
import 'package:velocity_x/velocity_x.dart';

class DescriptionCard extends StatefulWidget {
  const DescriptionCard({
    super.key,
    required this.deskripsi,
  });

  final String deskripsi;

  @override
  State<DescriptionCard> createState() => _DescriptionCardState();
}

class _DescriptionCardState extends State<DescriptionCard> {
  bool showAll = false;

  String get descriptionText {
    if (!showAll) {
      final splitted = widget.deskripsi.split(",");
      final takeCount = splitted.length > 5 ? 5 : 3;
      return splitted.take(takeCount).toString();
    }

    return widget.deskripsi;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: VStack(
        [
          const Text("Deskripsi Pekerjaan").text.lg.bold.make(),
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.linearToEaseOut,
            child: Text(descriptionText).text.justify.make(),
          ),
          16.heightBox,
          InkWell(
            onTap: () {
              setState(() {
                showAll = !showAll;
              });
            },
            child: Row(
              children: [
                const Text("Selengkapnya")
                    .text
                    .color(Color(Vx.getColorFromHex(kSecondaryColor)))
                    .make(),
                Icon(
                  Icons.arrow_drop_down,
                  color: Color(Vx.getColorFromHex(kSecondaryColor)),
                ),
              ],
            ),
          ),
        ],
      ).p24(),
    );
  }
}
