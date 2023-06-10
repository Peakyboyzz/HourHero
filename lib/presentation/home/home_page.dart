import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hourhero/presentation/jobs/widgets/job_card.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(36),
          children: [
            Row(
              children: [
                const Text("Hallo, Biboy!").text.xl4.bold.make(),
                const Spacer(),
                "https://picsum.photos/200".circularNetworkImage(radius: 36),
              ],
            ),
            32.heightBox,
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Search"),
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.tune),
              ),
            ),
            32.heightBox,
            const Text("Rekomendasi").text.bold.xl3.make(),
            20.heightBox,
            HStack([
              for (int i = 0; i < 5; i++) ...[
                JobItemSquare(id: i.toString()),
                20.widthBox,
              ],
            ]).h(280).scrollHorizontal(),
            32.heightBox,
            const Text("Lowongan Terbaru").text.bold.xl3.make(),
            for (int i = 0; i < 6; i++) ...[
              JobItemLandscape(id: i.toString()),
              20.heightBox,
            ],
          ],
        ),
      ),
    );
  }
}
