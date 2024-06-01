import 'package:flutter/material.dart';

class Navigation_test extends StatefulWidget {
  const Navigation_test({super.key});

  @override
  State<Navigation_test> createState() => _Navigation_testState();
}

class _Navigation_testState extends State<Navigation_test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation_Test'),
        centerTitle: true,
      ),
    );
  }
}
