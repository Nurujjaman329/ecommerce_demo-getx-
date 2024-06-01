import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'tech_brothers/height_width/height_width_test.dart';
import 'tech_brothers/screens/first_screen.dart';
import 'tech_brothers/screens/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      //theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      //home: HeightWidthTest(),
      getPages: [
        GetPage(
          name: '/',
          page: () => HeightWidthTest(),
        ),
        GetPage(
          name: '/firstScreen',
          page: () => FirstScreen(),
        ),
        GetPage(
          name: '/secondScreen',
          page: () => SecondScreen(),
        ),
      ],
    );
  }
}
