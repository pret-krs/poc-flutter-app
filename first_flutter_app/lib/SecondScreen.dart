import 'package:firstflutterapp/SecondScreenState.dart';
import 'package:flutter/material.dart';

class SecondScreen extends State<SecondScreenState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Second App Bar")),
        backgroundColor: Colors.amber,
        body: Stack(
          children: [
            Positioned(
              left: 20,
              right: 20,
              child: FlatButton(
                highlightColor: Colors.blue,
                child: Text("Click for 3rd screen"),
                color: Colors.blueAccent,
                textColor: Colors.white,
              ),
            )
          ],
        ));
    return null;
  }
}

//Text("Text 1"),
//Align(
//alignment: Alignment.topRight,
//child: Text("Text 2"),
//),
//Align(
//alignment: Alignment.bottomLeft,
//child: Text(
//"Text 2",
//textScaleFactor: 1.5,
//),
//),
