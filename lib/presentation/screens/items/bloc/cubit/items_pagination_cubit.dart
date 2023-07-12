import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:stayhome/model/items_model.dart';
import 'package:stayhome/mock/items_model_data.dart';

class ItemsPaginationCubit extends Cubit<ItemsPaginationState> {
  ItemsPaginationCubit() : super(ItemsPaginationInitial());
  List<ItemsModel> initialItems = [];
  bool isError = true;
  loadScreen() async {
    await Future.delayed(const Duration(seconds: 1));
    emit(
      ItemsPaginationInitial(),
    );
    if (isError) {
      emit(
        ItemsPaginationError(),
      );
      isError = false;
    }
  }

  loadAfterError() async {
    if (!isError) {
      emit(ItemsPaginationInitial());
      await Future.delayed(const Duration(seconds: 2));
      loadItems();
    }
  }

  void loadItems() {
    final currentItems = initialItems;
    currentItems.addAll(
      ItemsModelData.take(12),
    );
    emit(
      ItemsPaginationLoaded(currentItems),
    );
    initialItems = currentItems;
  }
}

@immutable
abstract class ItemsPaginationState {}

class ItemsPaginationInitial extends ItemsPaginationState {}

class ItemsPaginationLoaded extends ItemsPaginationState {
  final List<ItemsModel> items;
  ItemsPaginationLoaded(this.items);
}

class ItemsPaginationError extends ItemsPaginationState {}
