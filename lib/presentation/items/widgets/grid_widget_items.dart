import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stayhome/model/items_model_data.dart';
import 'package:stayhome/presentation/items/bloc/items_pagination_bloc.dart';
import 'package:stayhome/presentation/items/widgets/grid_widget_items_layout.dart';

class GridWidgetItems extends StatelessWidget {
  const GridWidgetItems({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.offset >
          scrollController.position.maxScrollExtent * 0.9) {
        bool isLoading = true;
        context.read<ItemsPaginationBloc>().add(
              ItemsPaginationEvent(isLoading),
            );
      }
    });
    return BlocProvider(
      create: (context) => ItemsPaginationBloc(),
      child: BlocBuilder<ItemsPaginationBloc, ItemsPaginationState>(
        builder: (context, state) {
          return GridView.count(
            controller: scrollController,
            shrinkWrap: true,
            primary: false,
            crossAxisCount: 3,
            mainAxisSpacing: 44,
            childAspectRatio: 0.95,
            children: ItemsModelData.map(
              (e) => GridWidgetLayout(
                model: e,
              ),
            ).toList(),
          );
        },
      ),
    );
  }
}
