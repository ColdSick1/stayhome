import 'package:auto_route/auto_route.dart';
import 'package:stayhome/presentation/screens/FAQ/screen/faq_screen.dart';
import 'package:stayhome/presentation/screens/items/screens/dashboard.dart';
import 'package:stayhome/presentation/screens/friends/screen/friends_tab.dart';
import 'package:stayhome/presentation/screens/main_screen/screen/empty_main_screen.dart';
import 'package:stayhome/presentation/screens/map/screens/map_screen.dart';
import 'package:stayhome/router/route_guards.dart';
import '../presentation/screens/friends/screen/friends_screen.dart';
import '../presentation/screens/authorization/screeens/authorization_screen.dart';
import '../presentation/screens/authorization/screeens/registration_screen.dart';

import '../presentation/screens/friends/screen/rate_tab.dart';
import '../presentation/screens/items/screens/items_screen.dart';
import '../presentation/screens/main_screen/screen/main_screen.dart';
import '../presentation/screens/progress/screens/progress_screen.dart';
import '../presentation/screens/settings/settings_screen.dart';
import '../presentation/screens/not_found_page.dart';

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
          page: Settings.page,
          path: '/settings',
        ),
        AutoRoute(
          page: FaqRoute.page,
          path: '/faq',
        ),
        AutoRoute(page: NotFound.page),
        AutoRoute(
          page: AuthorizationRoute.page,
          path: '/',
        ),
        AutoRoute(
          guards: [CheckCorrectRoot()],
          page: RegistationRoute.page,
          path: '/registration',
        ),
        AutoRoute(
          page: ItemsRoute.page,
        ),
        AutoRoute(
          page: DashboardRoute.page,
          path: '/dashboard',
          children: [
            AutoRoute(page: EmptyMainRoute.page, path: '', children: [
              AutoRoute(page: MainRoute.page, path: 'main'),
              AutoRoute(page: ItemsRoute.page, path: 'items'),
            ]
                // path: 'items',
                // page: ItemsRoute.page,
                ),
            AutoRoute(
              path: 'friends',
              page: FriendsRoutingScreen.page,
              children: [
                AutoRoute(
                  page: FriendsRoute.page,
                ),
                AutoRoute(page: Rate.page, path: 'rating'),
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
