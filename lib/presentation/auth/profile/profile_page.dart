import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hourhero/application/auth/user_profile/user_profile_bloc.dart';
import 'package:hourhero/application/auth/user_profile_form/user_profile_form_bloc.dart';
import 'package:hourhero/injection.dart';
import 'package:hourhero/presentation/auth/profile/widgets/profile_form.dart';

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
    return BlocProvider(
      create: (context) => getIt<UserProfileBloc>()
        ..add(const UserProfileEvent.watchProfileStarted()),
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<UserProfileBloc, UserProfileState>(
              builder: (context, state) {
            return state.map(
              initial: (_) {
                return Container();
              },
              loadingProgress: (_) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              loadSuccess: (e) {
                return BlocProvider(
                  create: (context) => getIt<UserProfileFormBloc>()
                    ..add(UserProfileFormEvent.started(e.user)),
                  child: ProfileWidget(
                    user: e.user,
                    menu: menu,
                  ),
                );
              },
              loadFailure: (e) {
                return ListTile(
                  tileColor: Colors.red,
                  textColor: Colors.white,
                  title: Text(
                    e.appUserFailure.map(
                      unexpected: (_) => 'Unexpected Error',
                      insufficientPermissions: (_) => 'Permission Error',
                    ),
                  ),
                );
              },
            );
          }),
        ),
      ),
    );
  }
}
