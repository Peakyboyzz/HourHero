// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:hourhero/presentation/auth/login/login_page.dart' as _i7;
import 'package:hourhero/presentation/auth/profile/profile_page.dart' as _i1;
import 'package:hourhero/presentation/auth/register/register_page.dart' as _i8;
import 'package:hourhero/presentation/chats/chats_page.dart' as _i9;
import 'package:hourhero/presentation/core/app_layout.dart' as _i2;
import 'package:hourhero/presentation/favorites/favorite_page.dart' as _i3;
import 'package:hourhero/presentation/home/home_page.dart' as _i4;
import 'package:hourhero/presentation/jobs/job_detail.dart' as _i5;
import 'package:hourhero/presentation/onboard/onboard_page.dart' as _i6;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    ProfileRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ProfilePage(),
      );
    },
    AppLayoutRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AppLayoutPage(),
      );
    },
    FavoriteRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.FavoritePage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    JobDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<JobDetailRouteArgs>(
          orElse: () => JobDetailRouteArgs(id: pathParams.getString('id')));
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.JobDetailPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    OnboardRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OnboardPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.RegisterPage(),
      );
    },
    ChatRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.ChatPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.ProfilePage]
class ProfileRoute extends _i10.PageRouteInfo<void> {
  const ProfileRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AppLayoutPage]
class AppLayoutRoute extends _i10.PageRouteInfo<void> {
  const AppLayoutRoute({List<_i10.PageRouteInfo>? children})
      : super(
          AppLayoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppLayoutRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.FavoritePage]
class FavoriteRoute extends _i10.PageRouteInfo<void> {
  const FavoriteRoute({List<_i10.PageRouteInfo>? children})
      : super(
          FavoriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.JobDetailPage]
class JobDetailRoute extends _i10.PageRouteInfo<JobDetailRouteArgs> {
  JobDetailRoute({
    _i11.Key? key,
    required String id,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          JobDetailRoute.name,
          args: JobDetailRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'JobDetailRoute';

  static const _i10.PageInfo<JobDetailRouteArgs> page =
      _i10.PageInfo<JobDetailRouteArgs>(name);
}

class JobDetailRouteArgs {
  const JobDetailRouteArgs({
    this.key,
    required this.id,
  });

  final _i11.Key? key;

  final String id;

  @override
  String toString() {
    return 'JobDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i6.OnboardPage]
class OnboardRoute extends _i10.PageRouteInfo<void> {
  const OnboardRoute({List<_i10.PageRouteInfo>? children})
      : super(
          OnboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LoginPage]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute({List<_i10.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.RegisterPage]
class RegisterRoute extends _i10.PageRouteInfo<void> {
  const RegisterRoute({List<_i10.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.ChatPage]
class ChatRoute extends _i10.PageRouteInfo<void> {
  const ChatRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
