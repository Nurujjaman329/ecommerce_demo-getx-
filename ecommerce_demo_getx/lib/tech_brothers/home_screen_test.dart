import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenGet extends StatefulWidget {
  const HomeScreenGet({super.key});

  @override
  State<HomeScreenGet> createState() => _HomeScreenGetState();
}

class _HomeScreenGetState extends State<HomeScreenGet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Practise'),
        centerTitle: true,
      ),
      body: Column(
        children: [],
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
