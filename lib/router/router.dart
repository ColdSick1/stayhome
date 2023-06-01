import 'package:auto_route/auto_route.dart';
import 'package:stayhome/presentation/items/screens/dashboard.dart';
import 'package:stayhome/presentation/friends/screen/friends_screen.dart';
import 'package:stayhome/presentation/items/screens/map_screen.dart';
import '../presentation/friends/screen/friends_routing.dart';
import '../presentation/authorization/screeens/authorization_screen.dart';
import '../presentation/authorization/screeens/registration_screen.dart';

import '../presentation/friends/screen/rate_screen.dart';
import '../presentation/items/screens/items_screen.dart';
import '../presentation/progress/screens/progress_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouterSingleton extends _$AppRouterSingleton {
  static AppRouterSingleton? _instance;
  AppRouterSingleton._();
  static AppRouterSingleton getInstance() {
    return _instance ??= AppRouterSingleton._();
  }

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: AuthorizationRoute.page,
          path: '/',
        ),
        AutoRoute(
          page: RegistationRoute.page,
          path: '/registration',
        ),
        AutoRoute(
          page: ItemsRoute.page,
        ),
        AutoRoute(
          page: DashboardRoute.page,
          children: [
            AutoRoute(
              path: 'items',
              page: ItemsRoute.page,
            ),
            AutoRoute(
              path: 'ftiends',
              page: FriendsRoutingScreen.page,
              children: [
                AutoRoute(
                  page: FriendsRoute.page,
                ),
                AutoRoute(page: Rate.page),
              ],
            ),
            AutoRoute(
              path: 'map',
              page: MapRoute.page,
            ),
            AutoRoute(
              path: 'progress',
              page: ProgressRoute.page,
            ),
          ],
        ),
      ];
}
