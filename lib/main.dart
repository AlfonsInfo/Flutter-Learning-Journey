import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Center(child: Text("Image Widget"))),
      body: Center(
        child: Row(children: [
          Spacer(flex: 2,),
          Container(width: 50, height: 50, color: Colors.blueAccent),
          Spacer(),
          Container(width: 50, height: 50, color: Colors.blueAccent),
          Spacer(),
          Container(width: 50, height: 50, color: Colors.blueAccent),
          Spacer(),
        ]),
      ),
        )
    );
  }
}
//STL -> Shortcut stateless widget.
