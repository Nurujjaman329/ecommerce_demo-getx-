import 'dart:io';

import 'package:ecommerce_demo_getx/tech_brothers/image_test/image_picker_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImagePickerTest extends StatefulWidget {
  const ImagePickerTest({super.key});

  @override
  State<ImagePickerTest> createState() => _ImagePickerTestState();
}

class _ImagePickerTestState extends State<ImagePickerTest> {
  ImagePickerController controller = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Test'),
        centerTitle: true,
      ),
      body: Obx(
        () {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: controller.imagePath.isNotEmpty
                      ? FileImage(
                          File(
                            controller.imagePath.toString(),
                          ),
                        )
                      : null,
                ),
              ),
              TextButton(
                onPressed: () async {
                  controller.getImage();
                },
                child: Text('Pick Image'),
              ),
            ],
          );
        },
      ),
    );
  }
}
