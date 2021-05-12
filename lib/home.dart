//import 'dart:html';
import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(MyApp());

// ignore: camel_case_types
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Expanded(
          child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        primary: false,
        children: <Widget>[
          Card(
              child: Column(children: <Widget>[
            Icon(Icons.person),
            Text("Profile"),
          ]))
        ],
      ))
    ]));
  }
}
