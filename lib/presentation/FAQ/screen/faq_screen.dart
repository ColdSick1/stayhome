import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:stayhome/presentation/FAQ/widgets/faq_content.dart';
import 'package:stayhome/presentation/design/colors.dart';
import 'package:stayhome/presentation/items/screens/drawer.dart';

@RoutePage()
class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            children: const [
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
            ],
          ),
        ),
      ),
    );
  }
}
