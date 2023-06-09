import 'package:flutter/material.dart';

import 'package:stayhome/presentation/design/colors.dart';

class ProgressDescripion extends StatelessWidget {
  const ProgressDescripion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Как увеличить прогресс:',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: DesignColors.headerColor,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          style: TextStyle(
            color: DesignColors.normalTxt,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          '— Зарабатывайте баллы \n— Приглашайте друзей \n— Заходите в приложение каждый день',
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: DesignColors.headerColor,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
          'Каждый балл в общую копилку баллов\n приближает нас к изобретению вакцины!',
        ),
      ],
    );
  }
}
