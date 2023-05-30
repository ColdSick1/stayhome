import 'package:flutter/material.dart';
import 'package:stayhome/model/items_model_data.dart';
import 'package:stayhome/presentation/items/widgets/grid_widget_items_layout.dart';

class GridWidgetItems extends StatelessWidget {
  const GridWidgetItems({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      primary: false,
      crossAxisCount: 3,
      mainAxisSpacing: 44,
      childAspectRatio: 0.95,
      children: ItemsModelData.map(
        (e) => GridWidgetLayout(
          model: e,
        ),
      ).toList(),
    );
  }
}
