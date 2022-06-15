import 'package:go_router/go_router.dart';
import 'package:instagram/src/modules/main_page_view.dart';
import 'package:instagram/src/news_feed.dart';

import '../core/not_found.dart';
import '../core/splash.dart';

class AppRoute {
  static var router = GoRouter(
    routes: [
      GoRoute(
        path: AppRouter.splash.value,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRouter.mainPageView.value,
        builder: (context, state) => const MainPageView(),
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
    initialLocation: AppRouter.splash.value,
  );
}

enum AppRouter {
  splash,
  camera,
  messager,
  mainPageView;

  String get value => '/$name';
}
