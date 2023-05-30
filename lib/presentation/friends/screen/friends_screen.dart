import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stayhome/presentation/friends/widget/friends_activity_module.dart';
import 'package:stayhome/presentation/friends/widget/friends_module.dart';
import 'package:stayhome/presentation/friends/widget/search_bar.dart';
import 'package:stayhome/presentation/friends/widget/your_friends_activity.dart';
import 'package:stayhome/presentation/items/screens/drawer.dart';

import '../../design/colors.dart';

@RoutePage()
class FriendsScreen extends StatelessWidget {
  const FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // backgroundColor: const Color(0xFFF6F6FF),
        // appBar: AppBar(
        //   actions: const[
        //     Center(
        //       child: TabBar(
        //         tabs: [
        //           Tab(
        //             child: Text('Друзья'),

        //           ),
        //           Tab(
        //             child: Text('Рейтинг'),
        //           ),
        //         ],
        //       ),
        //     )
        //   ],
        //   backgroundColor: const Color(0xFFF6F6FF),
        //   iconTheme: const IconThemeData(
        //     color: DesignColors.grey,
        //   ),
        // ),
        // endDrawer: const StayHomeDrawer(),
        SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        // shrinkWrap: true,
        children: const [
          CustomSearchBar(),
          SizedBox(
            height: 30,
          ),
          FriendsModule(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Divider(),
          ),
          SizedBox(
            height: 20,
          ),
          YourFriendsActivity(),
          SizedBox(
            height: 25,
          ),
          FriendsActivityModule(),
        ],
      ),
    );
  }
}
