import 'package:flutter/material.dart';
import 'package:stayhome/model/items_model_data.dart';
import 'package:stayhome/presentation/items/widgets/grid_widget_items_layout.dart';

class GridWidgetItems extends StatelessWidget {
  const GridWidgetItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 32,
      ),
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 44,
        childAspectRatio: 0.95,
        children: ItemsModelData.map(
          (e) => GridWidgetLayout(
            // name: e.name,
            // effect: e.effect,
            // asset: e.asset,
            model: e,
          ),
        ).toList(),
      ),
    );
  }
}
