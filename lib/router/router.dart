import 'package:auto_route/auto_route.dart';

import '../presentation/authorization/screeens/authorization_screen.dart';
import '../presentation/authorization/screeens/registration_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AuthorizationRoute.page, path: '/'),
        AutoRoute(page: RegistationRoute.page, path: '/registration')
      ];
}
