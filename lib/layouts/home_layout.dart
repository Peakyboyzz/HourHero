import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hourhero/router.gr.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class HomeLayoutPage extends StatelessWidget {
  const HomeLayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        MessagesRoute(),
        FavoriteRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
        );
      },
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final Function(int) onTap;

  final List<IconData> menu = const [
    Icons.home,
    Icons.chat,
    Icons.favorite,
    Icons.account_circle_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: VxBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (int i = 0; i < menu.length; i++)
              if (i == currentIndex)
                IconButton.filled(
                  onPressed: () {},
                  icon: Icon(menu[i]),
                )
              else
                IconButton(
                  onPressed: () {
                    onTap(i);
                  },
                  icon: Icon(menu[i]),
                ),
          ],
        ).p24(),
      ).white.make(),
    );
  }
}
