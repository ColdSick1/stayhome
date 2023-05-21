import 'package:auto_route/auto_route.dart';

import '../presentation/authorization/screeens/authorization_screen.dart';
import '../presentation/authorization/screeens/registration_screen.dart';
import '../presentation/items/screens/items_screen.dart';

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
      ];
}
