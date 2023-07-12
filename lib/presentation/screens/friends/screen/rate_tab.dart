import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stayhome/presentation/screens/friends/widget/header_of_top.dart';
import 'package:stayhome/presentation/screens/friends/widget/top_users.dart';

@RoutePage(name: 'Rate')
class RateTab extends StatelessWidget {
  const RateTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          HeaderOfTop(
              header: 'ТОП ПОЛЬЗОВАТЕЛЕЙ',
              name: 'Имя пользователя',
              score: 'Баллов'),
          SizedBox(
            height: 12,
          ),
          TopUsers(),
          SizedBox(
            height: 30,
          ),
          HeaderOfTop(
              header: 'ТОП ВАШИХ ДРУЗЕЙ',
              name: 'Имя пользователя',
              score: 'Баллов'),
          SizedBox(
            height: 12,
          ),
          TopUsers(),
        ],
      ),
    );
  }
}
