import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stayhome/router/router.dart';

import '../../../assets.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        ItemsRoute(),
        FriendsRoutingScreen(),
        MapRoute(),
        ProgressRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: 'Вы',
                icon: SvgPicture.asset(
                  Assets.assets_you_image_svg,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Друзья',
                icon: SvgPicture.asset(
                  Assets.assets_friends_inactve_svg,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Карта',
                icon: SvgPicture.asset(
                  Assets.assets_map_svg,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Прогресс',
                icon: SvgPicture.asset(
                  Assets.assets_earth_active_svg,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
