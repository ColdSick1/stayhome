import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stayhome/presentation/screens/items/widgets/grid_widget_items.dart';

import '../../../design/colors.dart';

@RoutePage()
class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Предметы',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: DesignColors.headerColor,
              ),
        ),
      ),
      body: const Column(
        children: [
          GridWidgetItems(),
        ],
      ),
    );
    // endDrawer: const StayHomeDrawer(),
  }
}
