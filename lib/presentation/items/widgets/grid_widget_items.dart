import 'package:flutter/material.dart';
import 'package:stayhome/model/items_model_data.dart';
import 'package:stayhome/presentation/items/widgets/grid_widget_items_layout.dart';

class GridWidgetItems extends StatelessWidget {
  const GridWidgetItems({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        ...ItemsModelData.map(
          (e) =>
              GridWidgetLayout(name: e.name, effect: e.effect, asset: e.asset),
        ),
      ],
    );
  }
}
