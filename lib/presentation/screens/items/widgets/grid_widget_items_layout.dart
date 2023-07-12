import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stayhome/model/items_model.dart';
import 'package:stayhome/presentation/design/colors.dart';
import 'package:stayhome/presentation/screens/items/widgets/dialog_widget.dart';

class GridWidgetLayout extends StatelessWidget {
  final ItemsModel model;
  const GridWidgetLayout({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (_) {
              return const CustomDialog();
            });
      },
      child: SizedBox(
        height: 100,
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
            Flexible(
              child: Text(
                model.effect,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 12,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
