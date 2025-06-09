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
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Get.theme.colorScheme.primary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title, style: TextStyle(color: Colors.white, fontSize: Get.width * 0.05),),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xff254D70)
        ),
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
                    fontSize: Get.width * 0.07,
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
                      calButton(onPressed: null, name: 'C'),
                      calButton(onPressed: null, name: 'x'),
                    ],
                  ),
                  Row(
                    children: [
                      calButton(onPressed: () => {}, name: '7'),
                      calButton(onPressed: null, name: '8'),
                      calButton(onPressed: null, name: '9'),
                      calButton(onPressed: null, name: '/'),
                    ],
                  ),
                  Row(
                    children: [
                      calButton(onPressed: () => {}, name: '4'),
                      calButton(onPressed: null, name: '5'),
                      calButton(onPressed: null, name: '6'),
                      calButton(onPressed: null, name: '-'),
                    ],
                  ),
                  Row(
                    children: [
                      calButton(onPressed: () => {}, name: '1'),
                      calButton(onPressed: null, name: '2'),
                      calButton(onPressed: null, name: '3'),
                      calButton(onPressed: null, name: '+'),
                    ],
                  ),
                  Row(
                    children: [
                      calButton(onPressed: () => {}, name: '.'),
                      calButton(onPressed: null, name: '0'),
                      // calButton(onPressed: null, name: '3'),
                      calButton(onPressed: null, flex: 2, name: '='),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
