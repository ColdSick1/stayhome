import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stayhome/presentation/design/colors.dart';
import 'package:stayhome/presentation/items/screens/drawer.dart';
import 'package:stayhome/presentation/items/widgets/grid_widget_items.dart';

@RoutePage()
class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: const GridWidgetItems(),
      endDrawer: StayHomeDrawer(),
    );
  }
}
