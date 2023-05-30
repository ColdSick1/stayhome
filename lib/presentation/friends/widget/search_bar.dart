import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stayhome/assets.dart';
import 'package:stayhome/presentation/design/colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 24, right: 16),
      child: SizedBox(
        height: 32,
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 0,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            fillColor: DesignColors.headerColor.withOpacity(0.05),
            prefixIcon: SvgPicture.asset(
              Assets.assets_search_svg,
              fit: BoxFit.scaleDown,
            ),
            hintText: 'Поиск',
            hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: DesignColors.headerColor.withOpacity(
                  0.24,
                ),
                fontSize: 12),
          ),
        ),
      ),
    );
  }
}
