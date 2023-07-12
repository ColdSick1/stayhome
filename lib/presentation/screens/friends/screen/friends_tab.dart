import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stayhome/presentation/screens/friends/widget/friends_activity_module.dart';
import 'package:stayhome/presentation/screens/friends/widget/friends_module.dart';
import 'package:stayhome/presentation/screens/friends/widget/search_bar.dart';
import 'package:stayhome/presentation/screens/friends/widget/your_friends_activity.dart';

@RoutePage()
class FriendsTab extends StatelessWidget {
  const FriendsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
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
