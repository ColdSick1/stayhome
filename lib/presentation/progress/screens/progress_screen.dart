import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Общий рейтинг'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          top: 8,
          right: 16,
          bottom: 32,
        ),
        child: Column(
          children: [
            Container(
              height: 0.3 * height,
              width: double.infinity,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
