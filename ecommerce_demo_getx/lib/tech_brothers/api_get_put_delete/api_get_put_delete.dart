import 'package:ecommerce_demo_getx/tech_brothers/api_get_put_delete/api_test_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApiTest extends StatefulWidget {
  const ApiTest({super.key});

  @override
  State<ApiTest> createState() => _ApiTestState();
}

class _ApiTestState extends State<ApiTest> {
  ApiTestController controller = Get.put(ApiTestController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Test"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailController,
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextFormField(
              controller: controller.passController,
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Obx(() {
              return InkWell(
                onTap: () {
                  controller.loginApi();
                },
                child: controller.loading.value
                    ? CircularProgressIndicator()
                    : Container(
                        height: 45.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
              );
            })
          ],
        ),
      ),
    );
  }
}
