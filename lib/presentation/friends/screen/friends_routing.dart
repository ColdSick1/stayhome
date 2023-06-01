import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:stayhome/router/router.dart';

import '../../design/colors.dart';
import '../../items/screens/drawer.dart';

@RoutePage(name: 'FriendsRoutingScreen')
class FriendsRoutingWidget extends StatelessWidget {
  const FriendsRoutingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
        routes: const [
          FriendsRoute(),
          Rate(),
        ],
        builder: (context, child, tabController) {
          return Scaffold(
            backgroundColor: const Color(0xFFF6F6FF),
            appBar: AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              title: TabBar(
                controller: tabController,
                tabs: [
                  Tab(
                    child: Text(
                      'Друзья',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: DesignColors.headerColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Рейтинг',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: DesignColors.headerColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                    ),
                  ),
                ],
              ),
              iconTheme: const IconThemeData(
                color: DesignColors.grey,
              ),
            ),
            endDrawer: const StayHomeDrawer(),
            body: child,
          );
        });
  }
}
