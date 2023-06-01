import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stayhome/presentation/items/widgets/grid_widget_items.dart';

@RoutePage()
class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // appBar: AppBar(
        //   iconTheme: const IconThemeData(
        //     color: DesignColors.grey,
        //   ),
        //   backgroundColor: Colors.white,
        //   centerTitle: true,
        //   title: Text(
        //     'Предметы',
        //     style: Theme.of(context).textTheme.bodyMedium!.copyWith(
        //           color: DesignColors.headerColor,
        //         ),
        //   ),
        // ),
        // body:
        SingleChildScrollView(
      child: Column(
        children: const [
          SizedBox(
            height: 30,
          ),
          GridWidgetItems(),
          SizedBox(
            height: 25,
          )
        ],
      ),
    );
    // endDrawer: const StayHomeDrawer(),
  }
}
