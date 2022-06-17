import 'package:rounded_loading_button/rounded_loading_button.dart';

mixin RoundedLoadingButtonMixin {
  RoundedLoadingButtonController btnController =
      RoundedLoadingButtonController();

  Future buttonerror() async {
    btnController.error();
    await Future.delayed(const Duration(seconds: 3));
    btnController.reset();
  }

  ///To display success button
  Future buttonsucces() async {
    btnController.success();
    await Future.delayed(const Duration(seconds: 3));
    btnController.reset();
  }
}
