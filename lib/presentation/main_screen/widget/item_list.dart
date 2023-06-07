import 'package:flutter/material.dart';
import 'package:stayhome/model/items_model_data.dart';
import 'package:stayhome/presentation/design/colors.dart';
import 'package:stayhome/presentation/items/widgets/grid_widget_items_layout.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Ваши предметы',
                style: TextStyle(
                  color: DesignColors.headerColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // getIt<AppRouterSingleton>().;
                },
                child: const Text(
                  'Смотреть все >',
                  style: TextStyle(
                    color: DesignColors.normalTxt,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 130,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: ItemsModelData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GridWidgetLayout(
                    model: ItemsModelData[index],
                  );
                }),
          ),
          const Divider(
            color: Color(0xFFDBE3F0),
          ),
        ],
      ),
    );
  }
}
