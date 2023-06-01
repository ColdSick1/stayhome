import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stayhome/presentation/design/colors.dart';

class ListTileForDrawer extends StatelessWidget {
  final String asset;
  final String title;
  final String? trailing;
  final Function() pageRoute;
  const ListTileForDrawer({
    required this.pageRoute,
    super.key,
    required this.asset,
    required this.title,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pageRoute,
      child: ListTile(
          leading: SvgPicture.asset(asset),
          title: Text(
            title,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 14,
                  color: DesignColors.headerColor,
                ),
          ),
          trailing: trailing != null
              ? Text(
                  trailing!,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 14,
                        color: DesignColors.headerColor.withOpacity(0.16),
                      ),
                )
              : null),
    );
  }
}
