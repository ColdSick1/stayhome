import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stayhome/main.dart';

import 'package:stayhome/presentation/design/colors.dart';

@RoutePage(name: 'settings')
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6FF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Настройки',
          style: TextStyle(fontSize: 16, color: DesignColors.headerColor),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {
              localization.translate('ru', save: true);
            },
            title: const Text('Выбрать русский язык'),
          ),
          ListTile(
            onTap: () {
              localization.translate('en', save: true);
            },
            title: const Text('choose english language'),
          )
        ],
      ),
    );
  }
}

enum ChoosedLanguage {
  english,
  russian,
}
