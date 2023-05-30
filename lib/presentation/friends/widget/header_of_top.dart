import 'package:flutter/material.dart';
import 'package:stayhome/presentation/design/colors.dart';

class HeaderOfTop extends StatelessWidget {
  final String header;
  final String name;
  final String score;
  const HeaderOfTop(
      {super.key,
      required this.header,
      required this.name,
      required this.score});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              header,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: DesignColors.headerColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: DesignColors.headerColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              Text(
                score,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: DesignColors.headerColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
