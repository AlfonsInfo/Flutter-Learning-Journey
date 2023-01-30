import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String message = "ini adalah Text";

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("TextStyle"))),
        body: Center(child: Text("ini adalah Text", style: TextStyle(fontFamily: "Good", fontSize: 50 ,fontWeight:FontWeight.bold )),),
      ),
    );
  }
}
//STL -> Shortcut stateless widget.
