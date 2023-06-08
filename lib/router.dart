import 'package:auto_route/auto_route.dart';
import 'package:hourhero/router.gr.dart';

export 'package:auto_route/auto_route.dart';
export 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/splash',
          page: SplashRoute.page,
        ),
        AutoRoute(
          path: '/sign-in',
          page: SignInRoute.page,
        ),
        AutoRoute(
          path: '/sign-up',
          page: SignUpRoute.page,
        ),
        AutoRoute(
          path: '/',
          page: HomeLayoutRoute.page,
          children: [
            RedirectRoute(path: '', redirectTo: 'home'),
            AutoRoute(
              path: 'home',
              page: HomeRoute.page,
            ),
            AutoRoute(
              path: 'messages',
              page: MessagesRoute.page,
            ),
            AutoRoute(
              path: 'favorite',
              page: FavoriteRoute.page,
            ),
            AutoRoute(
              path: 'profile',
              page: ProfileRoute.page,
            ),
          ],
        ),
        AutoRoute(
          path: '/jobs/:id',
          page: JobDetailRoute.page,
        ),
      ];
}
