import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeightWidthTest extends StatefulWidget {
  const HeightWidthTest({super.key});

  @override
  State<HeightWidthTest> createState() => _HeightWidthTestState();
}

class _HeightWidthTestState extends State<HeightWidthTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Height/Width Test'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Get.height * .5,
              width: Get.width * .3,
              color: Colors.amber,
              child: Center(
                child: Text('Center'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
