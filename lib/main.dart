import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text("Latihan Container"),
      )),
      body: Container(
        color: Colors.redAccent,
        margin: EdgeInsets.only(bottom: 50),
        padding: EdgeInsets.fromLTRB(10,20,30,40),
        child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),gradient: LinearGradient(colors: <Color>[
          Colors.amber,
          Colors.blue
        ],begin: Alignment.topLeft, end: Alignment.bottomRight))),
      ),
    ));
  }
}

//STL -> Shortcut stateless widget.
