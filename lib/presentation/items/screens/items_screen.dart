import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stayhome/presentation/items/widgets/grid_widget_items.dart';

@RoutePage()
class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Предметы'),
      ),
      body: const GridWidgetItems(),
    );
  }
}
