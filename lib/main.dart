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
      appBar: AppBar(
          leading: Icon(Icons.adb, color: Colors.white),
          title: Text("AppBar Example"),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
            IconButton(onPressed: (){}, icon: Icon(Icons.exit_to_app)),
          ],
          flexibleSpace: Container(decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Color(0xff0096ff),Color(0xff6610f2)],begin: FractionalOffset.topLeft, end: FractionalOffset.bottomRight),
          // image: DecorationImage(image: AssetImage("assets/pattern.jpg"), fit: BoxFit.none, repeat: ImageRepeat.repeat) //gunakan pattern semi transparan
          ),
          ),          
          ),
      body: Center(
        child: Row(children: [
          Spacer(
            flex: 2,
          ),
          Container(width: 50, height: 50, color: Colors.blueAccent),
          Spacer(),
          Container(width: 50, height: 50, color: Colors.blueAccent),
          Spacer(),
          Container(width: 50, height: 50, color: Colors.blueAccent),
          Spacer(),
        ]),
      ),
    ));
  }
}
//STL -> Shortcut stateless widget.
