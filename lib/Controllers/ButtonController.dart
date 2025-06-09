import 'package:get/get.dart';

class ButtonController extends GetxController {
  final RxString displayText = ''.obs;

  void textPrint(btnText) {
    if (displayText.value.isEmpty) {
      displayText.value = '';
    }
    print('working');
    displayText.value += btnText;
  }

  void lastRemove() {
    if (displayText.value.isNotEmpty) {
      displayText.value = displayText.value.toString().substring(
        0,
        displayText.value.length - 1,
      );
    }
  }
}
