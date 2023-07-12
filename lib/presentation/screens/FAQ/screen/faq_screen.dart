import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:stayhome/presentation/screens/FAQ/widgets/faq_content.dart';
import 'package:stayhome/presentation/design/colors.dart';
import 'package:stayhome/presentation/screens/items/screens/drawer.dart';

import '../../progress/widgets/void_button.dart';

@RoutePage()
class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6FF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.grey,
        ),
        title: const Text(
          'FAQ',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: DesignColors.headerColor,
          ),
        ),
        centerTitle: true,
      ),
      endDrawer: const StayHomeDrawer(),
      body: const Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 25,
          bottom: 25,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    FaqContent(
                      title: 'О приложении',
                      child: Text(
                        'Строка 1\nСтрока 2\nСтрока 3\nСтрока 4\nСтрока 5\nСтрока 6\nСтрока 7\nСтрока 9\n',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Divider(),
                    FaqContent(
                      title: 'Список статусов',
                      child: Text(
                        'Строка 1\nСтрока 2\nСтрока 3\nСтрока 4\nСтрока 5\nСтрока 6\nСтрока 7\nСтрока 9\n',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Divider(),
                    FaqContent(
                      title: 'Список достижений',
                      child: Text(
                        'Строка 1\nСтрока 2\nСтрока 3\nСтрока 4\nСтрока 5\nСтрока 6\nСтрока 7\nСтрока 9\n',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Divider(),
                    FaqContent(
                      title: 'О разработчике',
                      child: Text(
                        'Строка 1\nСтрока 2\nСтрока 3\nСтрока 4\nСтрока 5\nСтрока 6\nСтрока 7\nСтрока 9\n',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
            VoidButton(text: 'Связаться с разработчиком'),
          ],
        ),
      ),
    );
  }
}
