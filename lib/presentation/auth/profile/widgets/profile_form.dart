import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourhero/application/auth/core/auth_bloc.dart';
import 'package:hourhero/domain/auth/app_user.dart';
import 'package:hourhero/presentation/core/constants/styles.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
    required this.user,
    required this.menu,
  });

  final AppUser user;
  final List<(IconData, String)> menu;

  @override
  Widget build(BuildContext context) {
    return ListView(
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
                  "https://picsum.photos/200".circularNetworkImage(radius: 38),
                  20.widthBox,
                  Expanded(
                    child: VStack(
                      [
                        (user.name ?? "User Name").text.white.bold.xl3.make(),
                        4.heightBox,
                        user.email.text.make(),
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
            context.read<AuthBloc>().add(const AuthEvent.signedOut());
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Color(Vx.getColorFromHex(kDangerColor)),
            ),
          ),
          child: const Text("Logout"),
        ),
      ],
    );
  }
}
