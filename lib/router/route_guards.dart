import 'package:auto_route/auto_route.dart';
import 'package:stayhome/main.dart';
import 'package:stayhome/router/router.dart';

class CheckCorrectRoot extends AutoRouteGuard {
  final bool testCheck = false;
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (testCheck) {
      resolver.next(true);
    } else {
      getIt<AppRouterSingleton>().push(const NotFound());
    }
  }
}
