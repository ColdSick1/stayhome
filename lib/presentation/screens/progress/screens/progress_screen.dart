import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:stayhome/assets.dart';
import 'package:stayhome/presentation/screens/authorization/widgets/authorization_button.dart';

import 'package:stayhome/presentation/screens/progress/screens/progress_controller.dart';

import '../../../design/colors.dart';
import '../widgets/custom_loader.dart';
import '../widgets/progress_description.dart';
import '../widgets/void_button.dart';

@RoutePage()
class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loading = Loading();
    const int percent = 30;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6FF),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: Scaffold.of(context).openEndDrawer,
            icon: const Icon(
              Icons.reorder,
            ),
          ),
        ],
        iconTheme: const IconThemeData(
          color: DesignColors.grey,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Общий рейтинг',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: DesignColors.headerColor,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
        ),
      ),
      body: Observer(
        builder: (context) {
          if (loading.isLoading) {
            loading.onPageHandler();
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Transform.rotate(
                          angle: 4.8,
                          child: CustomLoaderProgress(
                            height: height,
                            percent: percent,
                          ),
                        ),
                        Positioned(
                          top: 20,
                          left: 5,
                          child: Image.asset(
                            Assets.assets_dots_violet_png,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const ProgressDescripion(),
                    const SizedBox(
                      height: 30,
                    ),
                    AuthorizationButton(
                        text: 'Получить баллы',
                        tapHandler: () => throw Exception(),
                        padding: 16),
                    const SizedBox(
                      height: 24,
                    ),
                    const VoidButton(
                      text: 'Пригласить друзей',
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
