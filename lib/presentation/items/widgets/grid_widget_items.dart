import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stayhome/presentation/design/colors.dart';
import 'package:stayhome/presentation/items/bloc/cubit/items_pagination_cubit.dart';
import 'package:stayhome/presentation/items/widgets/grid_widget_items_layout.dart';
import 'package:stayhome/presentation/items/widgets/reload_button.dart';

class GridWidgetItems extends StatefulWidget {
  const GridWidgetItems({super.key});

  @override
  State<GridWidgetItems> createState() => _GridWidgetItemsState();
}

class _GridWidgetItemsState extends State<GridWidgetItems> {
  late ItemsPaginationCubit itemsCubit;
  final ScrollController _scrollController = ScrollController();
  void _setupScrollController(context) {
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge &&
          _scrollController.position.pixels != 0) {
        log('Пагинация');
        itemsCubit.loadItems();
      }
    });
  }

  @override
  void initState() {
    itemsCubit = ItemsPaginationCubit();
    _setupScrollController(context);
    itemsCubit.loadScreen();

    super.initState();
  }
  // late ItemsPaginationCubit itemsCubit;

  // final ScrollController _scrollController = ScrollController();

  // void _setupScrollController(context) {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemsPaginationCubit, ItemsPaginationState>(
      bloc: itemsCubit,
      builder: (context, state) {
        if (state is ItemsPaginationInitial) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is ItemsPaginationLoaded) {
          return Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: GridView.count(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shrinkWrap: true,
                primary: false,
                crossAxisCount: 3,
                mainAxisSpacing: 44,
                childAspectRatio: 0.95,
                children: state.items
                    .map(
                      (e) => GridWidgetLayout(
                        model: e,
                      ),
                    )
                    .toList(),
              ),
            ),
          );
        } else {
          return Center(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 250, left: 20, right: 20),
                child: Column(
                  children: [
                    const Text(
                      'Что-то пошло не так, повторите попытку позже',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: DesignColors.headerColor, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ReloadButton(
                      text: 'Попробовать снова',
                      function: itemsCubit.loadAfterError,
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
