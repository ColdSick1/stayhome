import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stayhome/model/items_model.dart';
import 'package:stayhome/presentation/design/colors.dart';
import 'package:stayhome/presentation/items/widgets/dialog_widget.dart';

class GridWidgetLayout extends StatelessWidget {
  // final String name;
  // final String effect;
  // final String asset;
  final ItemsModel model;
  const GridWidgetLayout({
    super.key,
    // required this.name,
    // required this.effect,
    required this.model,
    // required this.asset,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (_) {
              return CustomDialog();
            });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(model.asset),
          Text(
            model.name,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(fontSize: 14, color: DesignColors.headerColor),
          ),
          Text(
            model.effect,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 12,
                ),
          ),
        ],
      ),
    );
  }
}
