import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GridWidgetLayout extends StatelessWidget {
  final String name;
  final String effect;
  final String asset;
  const GridWidgetLayout(
      {super.key,
      required this.name,
      required this.effect,
      required this.asset});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: SvgPicture.asset(asset),
          ),
          Text(name),
          Text(effect),
        ],
      ),
    );
  }
}
