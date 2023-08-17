// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:testtask/features/home/presentation/pages/home_page.dart';
import 'package:testtask/features/splash/presentation/pages/splash_screen.dart';

import 'routes.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|View,Route')
class AppRouter extends _$AppRouter {
  //
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          path: '/${MyRoutes.splash}',
          page: SplashRoute.page,
          initial: true,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        AutoRoute(
          path: '/${MyRoutes.home}',
          page: HomeRoute.page,
        ),
      ];
}
