import 'package:flutter/material.dart';
import 'package:get/get.dart';

class calButton extends StatelessWidget {
  calButton({
    super.key,
    required this.onPressed,
    required this.name,
    this.flex = 1,
  });
  final String name;
  final dynamic onPressed;
  RxBool isHover = false.obs;
  final int flex;

  void colorChange(bool hover) {
    isHover.value = hover;
  }

  @override
  Widget build(BuildContext context) {
    return  Expanded(
        flex: flex,
        child: Container(
          height: Get.height * 0.13,
          // width: Get.width * 0.25,
          margin: EdgeInsets.all(3),
          child:Obx(
      () => ElevatedButton(
            onPressed:onPressed,
            onHover: colorChange,
            child: Text(
              name,
              style: TextStyle(
                fontSize: Get.width * 0.04,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                isHover.value ? Colors.amber : Colors.blue,
              ),
              side: WidgetStatePropertyAll(BorderSide.none),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
