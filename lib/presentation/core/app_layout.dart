import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourhero/application/auth/user_profile/user_profile_bloc.dart';
import 'package:hourhero/injection.dart';
import 'package:hourhero/presentation/routes/router.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class AppLayoutPage extends StatelessWidget {
  const AppLayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<UserProfileBloc>()
            ..add(const UserProfileEvent.watchProfileStarted()),
        ),
      ],
      child: AutoTabsScaffold(
        routes: const [
          HomeRoute(),
          ChatRoute(),
          FavoriteRoute(),
          ProfileRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
          );
        },
      ),
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
