import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'navigation_test.dart';

class LightDarkTest extends StatefulWidget {
  const LightDarkTest({super.key});

  @override
  State<LightDarkTest> createState() => _LightDarkTestState();
}

class _LightDarkTestState extends State<LightDarkTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Light-Dark Theme'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            child: Card(
              child: ListTile(
                title: Text("GetX Alert Dialog"),
                subtitle: Text(""),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Navigation_test()));
                  //Get.defaultDialog(
                  //  title: 'Error',
                  //  titlePadding: EdgeInsets.all(10.0),
                  //  middleText: "Default Dialog That depend on Card",
                  //  contentPadding: EdgeInsets.all(10.0),
                  //  cancel: TextButton(
                  //    onPressed: () {},
                  //    child: Text('Cancel'),
                  //  ),
                  //  confirm: TextButton(
                  //    onPressed: () {
                  //      Get.back();
                  //    },
                  //    child: Text('OK'),
                  //  ),
                  //);
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            child: Card(
              child: ListTile(
                title: Text("GetX BottomSheet"),
                subtitle: Text(""),
                onTap: () {
                  Get.bottomSheet(
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.light_mode),
                            title: Text('Light Theme'),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.dark_mode),
                            title: Text('Dark Theme'),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            "title",
            "Welcome",
            backgroundColor: const Color.fromARGB(255, 247, 247, 138),
            snackPosition: SnackPosition.BOTTOM,
            showProgressIndicator: true,
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
