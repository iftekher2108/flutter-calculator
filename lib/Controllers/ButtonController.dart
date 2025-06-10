import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

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

  void clear() {
    displayText.value = '';
  }

  void equal() {
    if (displayText.value.isNotEmpty) {
      try {
        Parser p = Parser();
        Expression exp = p.parse(displayText.value);
        ContextModel cm = ContextModel();
        double eval = exp.evaluate(EvaluationType.REAL, cm);

        print(eval);
        displayText.value = eval.toString();
      } catch (e) {
        displayText.value = 'Error';
      }
    }
  }
}
