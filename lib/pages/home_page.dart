import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hourhero/constants/styles.dart';
import 'package:velocity_x/velocity_x.dart' hide VxContextExtensions;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

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
      bottomNavigationBar: SafeArea(
        child: VxBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.chat),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.account_circle_outlined),
              ),
            ],
          ).p24(),
        ).make(),
      ),
    );
  }
}

class JobItemSquare extends StatelessWidget {
  const JobItemSquare({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          context.push('/jobs/$id');
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
          context.push('/jobs/$id');
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
