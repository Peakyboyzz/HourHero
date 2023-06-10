import 'package:auto_route/auto_route.dart';
import 'router.gr.dart';

export 'package:auto_route/auto_route.dart';
export 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          initial: true,
          page: OnboardRoute.page,
        ),
        AutoRoute(
          path: '/login',
          page: LoginRoute.page,
        ),
        AutoRoute(
          path: '/register',
          page: RegisterRoute.page,
        ),
        AutoRoute(
          path: '/home',
          page: AppLayoutRoute.page,
          children: [
            AutoRoute(
              path: '',
              page: HomeRoute.page,
            ),
            AutoRoute(
              path: 'chats',
              page: ChatRoute.page,
            ),
            AutoRoute(
              path: 'favorites',
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
