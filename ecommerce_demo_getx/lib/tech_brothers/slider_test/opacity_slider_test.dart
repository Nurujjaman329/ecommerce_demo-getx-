import 'package:ecommerce_demo_getx/tech_brothers/slider_test/slider_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OpacitySlider extends StatefulWidget {
  OpacitySlider({super.key});

  @override
  State<OpacitySlider> createState() => _OpacitySliderState();
}

class _OpacitySliderState extends State<OpacitySlider> {
  SliderController controller = Get.put(SliderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity Test'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Obx(
            () => Container(
              height: 200,
              width: 200,
              color: Colors.orange.withOpacity(controller.opacity.value),
            ),
          ),
          Obx(
            () => Slider(
              value: controller.opacity.value,
              onChanged: (val) {
                controller.setOpacity(val);
                print(val);
              },
            ),
          ),
        ],
      ),
    );
  }
}
