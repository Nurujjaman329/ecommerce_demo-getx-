import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language_Screen extends StatefulWidget {
  const Language_Screen({super.key});

  @override
  State<Language_Screen> createState() => _Language_ScreenState();
}

class _Language_ScreenState extends State<Language_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Language Test"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          Row(
            children: [
              OutlinedButton(
                onPressed: () {
                  Get.updateLocale(
                    Locale('en', 'US'),
                  );
                },
                child: Text('English'),
              ),
              SizedBox(
                width: 10.0,
              ),
              OutlinedButton(
                onPressed: () {
                  Get.updateLocale(
                    Locale('bn', 'BN'),
                  );
                },
                child: Text('Bangla'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
