import 'package:calculator_app/widgets/aboutDrawer.dart';
import 'package:calculator_app/widgets/calButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calculator_app/Controllers/ButtonController.dart';

class Home extends StatelessWidget {
  final String title;

  const Home({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    ButtonController controller = Get.put(ButtonController());

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Get.theme.colorScheme.primary,
      //   centerTitle: true,

      //   title: Text(
      //     title,
      //     style: TextStyle(color: Colors.white, fontSize: Get.width * 0.03),
      //   ),
      // ),
      extendBody: true,
      endDrawer: aboutDrawer(),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Color(0xff254D70)),
          padding: EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Obx(
                () => Container(
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Color(0xff131D4F),
                  ),
                  height: Get.height * 0.18,
                  width: double.infinity,
                  child: Text(
                    "${controller.displayText}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Get.width * 0.06,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 3),
                child: Column(
                  children: [
                    Row(
                      children: [
                        calButton(
                          onPressed: () {
                            controller.textPrint("%");
                          },
                          name: '%',
                        ),
                        calButton(
                          onPressed: () {
                            controller.lastRemove();
                          },
                          name: 'CE',
                        ),
                        calButton(
                          onPressed: () {
                            controller.clear();
                          },
                          name: 'C',
                        ),
                        calButton(
                          onPressed: () {
                            controller.textPrint('*');
                          },
                          name: 'x',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        calButton(
                          onPressed: () {
                            controller.textPrint('7');
                          },
                          name: '7',
                        ),
                        calButton(
                          onPressed: () {
                            controller.textPrint('8');
                          },
                          name: '8',
                        ),
                        calButton(
                          onPressed: () {
                            controller.textPrint('9');
                          },
                          name: '9',
                        ),
                        calButton(
                          onPressed: () {
                            controller.textPrint('/');
                          },
                          name: '/',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        calButton(
                          onPressed: () {
                            controller.textPrint('4');
                          },
                          name: '4',
                        ),
                        calButton(
                          onPressed: () {
                            controller.textPrint('5');
                          },
                          name: '5',
                        ),
                        calButton(
                          onPressed: () {
                            controller.textPrint('6');
                          },
                          name: '6',
                        ),
                        calButton(
                          onPressed: () {
                            controller.textPrint('-');
                          },
                          name: '-',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        calButton(
                          onPressed: () {
                            controller.textPrint('1');
                          },
                          name: '1',
                        ),
                        calButton(
                          onPressed: () {
                            controller.textPrint('2');
                          },
                          name: '2',
                        ),
                        calButton(
                          onPressed: () {
                            controller.textPrint('3');
                          },
                          name: '3',
                        ),
                        calButton(
                          onPressed: () {
                            controller.textPrint('+');
                          },
                          name: '+',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        calButton(
                          onPressed: () {
                            controller.textPrint('.');
                          },
                          name: '.',
                        ),
                        calButton(
                          onPressed: () {
                            controller.textPrint('0');
                          },
                          name: '0',
                        ),
                        // calButton(onPressed: null, name: '3'),
                        calButton(
                          onPressed: () {
                            controller.equal();
                          },
                          flex: 2,
                          name: '=',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
