import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stayhome/assets.dart';
import 'package:stayhome/presentation/main_screen/widget/user_card.dart';

import '../../design/colors.dart';
import '../../friends/widget/friends_module.dart';
import '../widget/achievements_list.dart';
import '../widget/item_list.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF6F6FF),
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: Scaffold.of(context).openEndDrawer,
              icon: const Icon(
                Icons.reorder,
              ),
            ),
          ],
          iconTheme: const IconThemeData(
            color: DesignColors.grey,
          ),
          title: SvgPicture.asset(Assets.assets_Let_s_Chill_svg),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              UserCard(),
              SizedBox(
                height: 30,
              ),
              ItemList(),
              FriendsModule(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Divider(
                  color: Color(0xFFDBE3F0),
                ),
              ),
              AchievementList(),
              Divider(),
            ],
          ),
        ));
  }
}
