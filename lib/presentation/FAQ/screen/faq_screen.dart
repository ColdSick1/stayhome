import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:stayhome/presentation/FAQ/widgets/faq_content.dart';
import 'package:stayhome/presentation/design/colors.dart';
import 'package:stayhome/presentation/items/screens/drawer.dart';
import 'package:stayhome/presentation/progress/widgets/void_button.dart';

@RoutePage()
class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 25,
            bottom: 25,
          ),
          child: Column(
            children: [
              const FaqContent(
                title: 'О приложении',
                child: Text(
                  'Строка 1\nСтрока 2\nСтрока 3\nСтрока 4\nСтрока 5\nСтрока 6\nСтрока 7\nСтрока 9\n',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const Divider(),
              const FaqContent(
                title: 'Список статусов',
                child: Text(
                  'Строка 1\nСтрока 2\nСтрока 3\nСтрока 4\nСтрока 5\nСтрока 6\nСтрока 7\nСтрока 9\n',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const Divider(),
              const FaqContent(
                title: 'Список достижений',
                child: Text(
                  'Строка 1\nСтрока 2\nСтрока 3\nСтрока 4\nСтрока 5\nСтрока 6\nСтрока 7\nСтрока 9\n',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const Divider(),
              const FaqContent(
                title: 'О разработчике',
                child: Text(
                  'Строка 1\nСтрока 2\nСтрока 3\nСтрока 4\nСтрока 5\nСтрока 6\nСтрока 7\nСтрока 9\n',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const Divider(),
              SizedBox(
                height: height / 3,
              ),
              const VoidButton(text: 'Связаться с разработчиком')
            ],
          ),
        ),
      ),
    );
  }
}
