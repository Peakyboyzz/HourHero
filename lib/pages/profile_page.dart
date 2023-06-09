import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourhero/app/bloc/app_bloc.dart';
import 'package:hourhero/constants/styles.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const List<(IconData, String)> menu = [
    (Icons.account_circle_outlined, "Tentang Saya"),
    (Icons.work_outline, "Pengalaman Kerja"),
    (Icons.school_outlined, "Pendidikan"),
    (Icons.account_tree_outlined, "Skill"),
    (Icons.g_translate_outlined, "Bahasa"),
    (Icons.file_copy_outlined, "Penghargaan"),
  ];

  @override
  Widget build(BuildContext context) {
    final user = context.select((AppBloc bloc) => bloc.state.user);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 36,
            vertical: 24,
          ),
          children: [
            const Text("Profile").text.xl3.make(),
            20.heightBox,
            VxBox(
              child: VStack(
                [
                  HStack(
                    [
                      "https://picsum.photos/200"
                          .circularNetworkImage(radius: 38),
                      20.widthBox,
                      Expanded(
                        child: VStack(
                          [
                            (user.name ?? "").text.white.bold.xl3.make(),
                            4.heightBox,
                            (user.email ?? "").text.make(),
                          ],
                        ),
                      )
                    ],
                  ),
                  20.heightBox,
                  Row(
                    children: [
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            const Text("Edit Profile"),
                            4.widthBox,
                            const Icon(Icons.edit),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ).p32(),
            )
                .withGradient(
                  LinearGradient(
                    colors: [
                      Colors.white,
                      Color(Vx.getColorFromHex(kPrimaryColor))
                    ],
                    stops: const [0, 0.4],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                )
                .rounded
                .make(),
            20.heightBox,
            for (final item in menu) ...[
              ListTile(
                leading: Icon(item.$1),
                title: Text(item.$2),
                trailing: IconButton.filled(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Vx.sky200),
                    foregroundColor: MaterialStateProperty.all(
                      Color(Vx.getColorFromHex(kSecondaryColor)),
                    ),
                  ),
                ),
                onTap: () {},
              ).p16().box.white.rounded.make(),
              10.heightBox,
            ],
            ElevatedButton(
              onPressed: () {
                context.read<AppBloc>().add(const AppLogoutRequested());
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Color(Vx.getColorFromHex(kDangerColor)),
                ),
              ),
              child: const Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
