import 'package:ecommerce_demo_getx/tech_brothers/switch_test/switch_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SwitchTest extends StatefulWidget {
  SwitchTest({super.key});

  @override
  State<SwitchTest> createState() => _SwitchTestState();
}

class _SwitchTestState extends State<SwitchTest> {
  SwitchController controller = Get.put(SwitchController());

  bool notifications = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch_test"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text('Notifications'),
              Obx(
                () => Switch(
                  value: controller.notifications.value,
                  onChanged: (val) {
                    controller.switchChange(val);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
