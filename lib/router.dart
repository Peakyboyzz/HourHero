import 'package:go_router/go_router.dart';
import 'package:hourhero/pages/home_page.dart';
import 'package:hourhero/pages/job_detail.dart';
import 'package:hourhero/pages/sign_in_page.dart';
import 'package:hourhero/pages/sign_up_page.dart';
import 'package:hourhero/pages/splash_page.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: '/sign-in',
      builder: (context, state) => const SignInPage(),
    ),
    GoRoute(
      path: '/sign-up',
      builder: (context, state) => const SignUpPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/jobs/:jobId',
      builder: (context, state) => JobDetailPage(
        jobId: state.pathParameters['jobId'] as String,
      ),
    ),
  ],
);
