import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calculator_app/Pages/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRight,
      transitionDuration: Duration(milliseconds: 700),
      theme: ThemeData(colorScheme: ColorScheme.light(primary: Color(0xff27548A))),
      home: Home(title: "Calculator App"),
      getPages: [
        // GetPage(name: name, page: page)
      ],
    );
  }
}
