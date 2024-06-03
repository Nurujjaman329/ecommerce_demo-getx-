import 'package:ecommerce_demo_getx/tech_brothers/slider_test/opacity_slider_test.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'tech_brothers/counter_test/counter_screen.dart';
import 'tech_brothers/favourite_app/favourite_test.dart';
import 'tech_brothers/home_screen_test.dart';
import 'tech_brothers/language_test/language_screen.dart';
import 'tech_brothers/language_test/language_test.dart';
import 'tech_brothers/screens/first_screen.dart';
import 'tech_brothers/screens/second_screen.dart';
import 'tech_brothers/switch_test/switch_test.dart';

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
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('bn', 'BN'),
      translations: Language(),
      //home: HeightWidthTest(),
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomeScreenGet(),
        ),
        GetPage(
          name: '/firstScreen',
          page: () => FirstScreen(),
        ),
        GetPage(
          name: '/secondScreen',
          page: () => const SecondScreen(),
        ),
        GetPage(
          name: '/lanScreen',
          page: () => const Language_Screen(),
        ),
        GetPage(
          name: '/countScreen',
          page: () => const CounterScreen(),
        ),
        GetPage(
          name: '/opacityScreen',
          page: () => OpacitySlider(),
        ),
        GetPage(
          name: '/switchScreen',
          page: () => SwitchTest(),
        ),
        GetPage(
          name: '/favScreen',
          page: () => const FavouriteTestScreen(),
        ),
      ],
    );
  }
}
