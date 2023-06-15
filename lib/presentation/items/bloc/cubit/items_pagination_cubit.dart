import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:stayhome/model/items_model.dart';
import 'package:stayhome/model/items_model_data.dart';

class ItemsPaginationCubit extends Cubit<ItemsPaginationState> {
  ItemsPaginationCubit() : super(ItemsPaginationInitial());
  List<ItemsModel> initialItems = [];
  moveToScreen() async {
    emit(
      ItemsPaginationInitial(),
    );
    await Future.delayed(const Duration(seconds: 2));
    loadItems();
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

// class ItemsPaginationLoading extends ItemsPaginationState {
//   final List<ItemsModel> oldItems;
//   // final bool isFirstFetch;

//   ItemsPaginationLoading(
//     this.oldItems,
//   );
// }
