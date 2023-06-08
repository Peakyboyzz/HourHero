import 'package:flutter/material.dart';
import 'package:hourhero/constants/styles.dart';
import 'package:hourhero/router.dart';
import 'package:velocity_x/velocity_x.dart';

class JobItemSquare extends StatelessWidget {
  const JobItemSquare({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          context.router.push(JobDetailRoute(jobId: id));
        },
        child: VStack(
          [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading:
                  "https://picsum.photos/200".circularNetworkImage(radius: 20),
              title: Text("Notre $id"),
              subtitle: const Text("Tasik Malaya, INA"),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.bookmark_outline),
              ),
            ),
            20.heightBox,
            const Text("Barista").text.xl2.make(),
            4.heightBox,
            Wrap(
              spacing: 2,
              runSpacing: 2,
              children: ['Junior', 'Part Time', 'Remote']
                  .map(
                    (e) => VxBox(child: Text('$e ')).gray200.rounded.p3.make(),
                  )
                  .toList(),
            ),
            20.heightBox,
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(Vx.getColorFromHex(kSecondaryColor)),
                  ),
                  child: const Text("Daftar"),
                ),
                const Spacer(),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "1,5JT",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: "/Bulan"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ).w(245).p16(),
      ),
    );
  }
}

class JobItemLandscape extends StatelessWidget {
  const JobItemLandscape({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          context.router.push(JobDetailRoute(jobId: id));
        },
        child: VStack(
          [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: VxBox()
                  .square(40)
                  .bgImage(const DecorationImage(
                    image: NetworkImage("https://picsum.photos/200"),
                    fit: BoxFit.cover,
                  ))
                  .rounded
                  .make(),
              title: Text("Notre $id"),
              subtitle: const Text("Tasik Malaya, INA"),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.bookmark_outline),
              ),
            ),
            16.heightBox,
            Row(
              children: [
                Expanded(
                  child: Wrap(
                    spacing: 2,
                    runSpacing: 2,
                    children: ['Junior', 'Part Time', 'Remote']
                        .map(
                          (e) => VxBox(child: Text('$e ').text.sm.make())
                              .gray200
                              .rounded
                              .p3
                              .make(),
                        )
                        .toList(),
                  ),
                ),
                8.widthBox,
                const Text("1,5JT/Bulan"),
              ],
            ),
          ],
        ).p16(),
      ),
    );
  }
}
