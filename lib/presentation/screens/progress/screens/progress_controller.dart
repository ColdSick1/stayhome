import 'package:mobx/mobx.dart';

part 'progress_controller.g.dart';

class Loading = LoadingBase with _$Loading;

abstract class LoadingBase with Store {
  @observable
  bool isLoading = true;

  @action
  Future<bool> onPageHandler() async {
    Future.delayed(
      const Duration(seconds: 2),
      switcher,
    );
    return isLoading;
  }

  void switcher() {
    isLoading = false;
  }
}
