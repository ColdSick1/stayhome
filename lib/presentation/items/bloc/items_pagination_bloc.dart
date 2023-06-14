import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:stayhome/model/items_model_data.dart';

import '../../../model/items_model.dart';

class ItemsPaginationBloc
    extends Bloc<ItemsPaginationEvent, ItemsPaginationState> {
  ItemsPaginationBloc() : super(ItemsPaginationInitial()) {
    on<ItemsPaginationEvent>((event, emit) {
      List<ItemsModel> listPaginationItemsModel = [];
      List<ItemsModel> itemsModelData = ItemsModelData;
      if (event.isLoading && listPaginationItemsModel.isEmpty) {
        listPaginationItemsModel.addAll(
          itemsModelData.take(12),
        );
      } else if (event.isLoading) {
        listPaginationItemsModel.addAll(
          itemsModelData.skip(12).take(12),
        );
      }
      emit(
        ItemsPaginationList(listPaginationItemsModel),
      );
    });
  }
}

@immutable
class ItemsPaginationEvent {
  bool isLoading;
  ItemsPaginationEvent(this.isLoading);
}

@immutable
abstract class ItemsPaginationState {}

class ItemsPaginationInitial extends ItemsPaginationState {}

class ItemsPaginationList extends ItemsPaginationState {
  late final List<ItemsModel> list;
  ItemsPaginationList(this.list);
}
