import 'package:firstflutterapp/HomeWidget.dart';
import 'package:firstflutterapp/NetworkData.dart';
import 'package:firstflutterapp/SecondScreen.dart';
import 'package:firstflutterapp/SecondScreenState.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class AppState extends State<HomeWidget> {
  String textToShow = "Normal Text";
  bool isUpdated = false;

  void updateText() {
    setState(() {
      textToShow = isUpdated ? "Updated Text" : "Normal Text";
      showToast(textToShow);
      isUpdated = !isUpdated;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppState"),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            child: Text(textToShow),
            onPressed: updateText,
          ),
          FlatButton(
            child: Text("Click to make Network call"),
            onPressed: fetchData,
          ),
          FlatButton(
            child: Text("Move to second screen"),
            onPressed: () {
              navigateToSecondPage(context);
            },
          ),
          Text("Second Text"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: updateText,
        tooltip: "Update Text",
        child: Icon(Icons.update),
      ),
    );
  }
}

void showToast(String message) {
  Fluttertoast.showToast(msg: message, toastLength: Toast.LENGTH_SHORT);
}

void fetchData() {
  Future<http.Response> response = NetworkData().fetchList();
//  print(response.asStream().by);
}

void navigateToSecondPage(BuildContext context) {
  Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => SecondScreenState()));
}

//Center(child: Text(textToShow)),
