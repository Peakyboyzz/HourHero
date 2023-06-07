import 'package:flutter/material.dart';
import 'package:hourhero/constants/styles.dart';
import 'package:velocity_x/velocity_x.dart';

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
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 32,
          ),
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
                const JobItemSquare(),
                20.widthBox,
              ],
            ]).h(224).scrollHorizontal(),
            32.heightBox,
            const Text("Lowongan Terbaru").text.bold.xl3.make(),
            for (int i = 0; i < 8; i++) ...[
              const JobItemLandscape(),
              20.heightBox,
            ],
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPageIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              currentPageIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Messages",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: "Profile",
            ),
          ]),
    );
  }
}

class JobItemSquare extends StatelessWidget {
  const JobItemSquare({super.key});

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: VStack(
        [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading:
                "https://picsum.photos/200".circularNetworkImage(radius: 20),
            title: const Text("Notre"),
            subtitle: const Text("Tasik Malaya, INA"),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.bookmark_outline),
            ),
          ),
          const Spacer(),
          const Text("Barista").text.xl2.make(),
          Wrap(
            spacing: 2,
            runSpacing: 2,
            children: ['Junior', 'Part Time', 'Remote']
                .map(
                  (e) => VxBox(child: Text('$e ')).gray200.rounded.p8.make(),
                )
                .toList(),
          ),
          const Spacer(),
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
              const Text("1,5JT/Bulan"),
            ],
          ),
        ],
      ).w(245).p16(),
    ).white.rounded.make();
  }
}

class JobItemLandscape extends StatelessWidget {
  const JobItemLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    return VxBox(
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
            title: const Text("Notre"),
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
                        (e) =>
                            VxBox(child: Text('$e ')).gray200.rounded.p8.make(),
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
    ).white.rounded.make();
  }
}
