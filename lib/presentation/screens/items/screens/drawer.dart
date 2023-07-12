import 'package:flutter/material.dart';
import 'package:stayhome/assets.dart';
import 'package:stayhome/main.dart';
import 'package:stayhome/presentation/screens/items/widgets/list_tile_drawer.dart';
import 'package:stayhome/router/router.dart';

class StayHomeDrawer extends StatelessWidget {
  const StayHomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.6,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset('assets/stay_home_drawer.png'),
                  const Divider(),
                  ListTileForDrawer(
                    asset: Assets.assets_bell_svg,
                    title: 'Уведомления',
                    trailing: '12',
                    pageRoute: () {},
                  ),
                  const Divider(),
                  ListTileForDrawer(
                    pageRoute: () {},
                    asset: Assets.assets_info_svg,
                    title: 'О приложении',
                    trailing: null,
                  ),
                  const Divider(),
                  ListTileForDrawer(
                    pageRoute: () {
                      getIt<AppRouterSingleton>().push(
                        const FaqRoute(),
                      );
                    },
                    asset: Assets.assets_faq_svg,
                    title: 'FAQ',
                    trailing: null,
                  ),
                  const Divider(),
                  ListTileForDrawer(
                    pageRoute: () {},
                    asset: Assets.assets_rating_svg,
                    title: 'Рейтинг',
                    trailing: null,
                  ),
                  const Divider(),
                  ListTileForDrawer(
                    pageRoute: () {
                      getIt<AppRouterSingleton>().pushNamed('/settings');
                    },
                    asset: Assets.assets_settings_svg,
                    title: 'Настройки',
                    trailing: null,
                  ),
                  const Divider(),
                ],
              ),
              ListTileForDrawer(
                pageRoute: () {
                  getIt<AppRouterSingleton>().pop();
                },
                asset: Assets.assets_logout_svg,
                title: 'Выход',
                trailing: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
