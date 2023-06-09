// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:hourhero/layouts/home_layout.dart' as _i1;
import 'package:hourhero/pages/favorite_page.dart' as _i2;
import 'package:hourhero/pages/home_page.dart' as _i3;
import 'package:hourhero/pages/job_detail.dart' as _i4;
import 'package:hourhero/pages/messages_page.dart' as _i5;
import 'package:hourhero/pages/profile_page.dart' as _i6;
import 'package:hourhero/pages/sign_in_page.dart' as _i7;
import 'package:hourhero/pages/sign_up_page.dart' as _i8;
import 'package:hourhero/pages/splash_page.dart' as _i9;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    HomeLayoutRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeLayoutPage(),
      );
    },
    FavoriteRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.FavoritePage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    JobDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<JobDetailRouteArgs>(
          orElse: () => JobDetailRouteArgs(id: pathParams.getString('id')));
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.JobDetailPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    MessagesRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MessagesPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ProfilePage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SignInPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SignUpPage(),
      );
    },
    OnboardRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.OnboardPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeLayoutPage]
class HomeLayoutRoute extends _i10.PageRouteInfo<void> {
  const HomeLayoutRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeLayoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeLayoutRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.FavoritePage]
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
/// [_i3.HomePage]
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
/// [_i4.JobDetailPage]
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
/// [_i5.MessagesPage]
class MessagesRoute extends _i10.PageRouteInfo<void> {
  const MessagesRoute({List<_i10.PageRouteInfo>? children})
      : super(
          MessagesRoute.name,
          initialChildren: children,
        );

  static const String name = 'MessagesRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ProfilePage]
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
/// [_i7.SignInPage]
class SignInRoute extends _i10.PageRouteInfo<void> {
  const SignInRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SignUpPage]
class SignUpRoute extends _i10.PageRouteInfo<void> {
  const SignUpRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.OnboardPage]
class OnboardRoute extends _i10.PageRouteInfo<void> {
  const OnboardRoute({List<_i10.PageRouteInfo>? children})
      : super(
          OnboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
