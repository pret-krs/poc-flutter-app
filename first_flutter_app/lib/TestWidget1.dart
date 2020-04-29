import 'package:firstflutterapp/HomeWidget.dart';
import 'package:flutter/material.dart';

class TestWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Widget 1',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeWidget(),
    );
  }
}

void main() {
  runApp(TestWidget1());
}
