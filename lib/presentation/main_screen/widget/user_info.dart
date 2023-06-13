import 'package:flutter/material.dart';
import 'package:stayhome/presentation/design/colors.dart';
import 'package:stayhome/presentation/main_screen/widget/info_widget.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Информация',
            style: TextStyle(
              color: DesignColors.headerColor,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InfoWidget(text: 'Баллов', value: '3500'),
          InfoWidget(text: 'Друзей', value: '14/5'),
          InfoWidget(text: 'Место в рейтинге', value: '46'),
          InfoWidget(text: 'До статуса Гомер Симпсон', value: '3 дня'),
          InfoWidget(text: 'Максимальное расстояние', value: '500 метров'),
          InfoWidget(text: 'Время отсутствия', value: '17 часов'),
        ],
      ),
    );
  }
}
