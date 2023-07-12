import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:stayhome/router/router.dart';

import '../../../design/colors.dart';

@RoutePage(name: 'FriendsRoutingScreen')
class FriendsScreen extends StatelessWidget {
  const FriendsScreen({super.key});

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
              actions: [
                IconButton(
                  onPressed: Scaffold.of(context).openEndDrawer,
                  icon: const Icon(
                    Icons.reorder,
                  ),
                ),
              ],
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
            body: child,
          );
        });
  }
}
