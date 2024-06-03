import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'tech_brothers/home_screen_test.dart';
import 'tech_brothers/language_test/language_screen.dart';
import 'tech_brothers/language_test/language_test.dart';
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
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('bn', 'BN'),
      translations: Language(),
      //home: HeightWidthTest(),
      getPages: [
        GetPage(
          name: '/',
          page: () => HomeScreenGet(),
        ),
        GetPage(
          name: '/firstScreen',
          page: () => FirstScreen(),
        ),
        GetPage(
          name: '/secondScreen',
          page: () => SecondScreen(),
        ),
        GetPage(
          name: '/lanScreen',
          page: () => Language_Screen(),
        ),
      ],
    );
  }
}
