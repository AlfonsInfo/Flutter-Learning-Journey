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
          child: Container(
        color: Colors.black,
        width: 200,
        height: 200,
        padding: EdgeInsets.all(3),
        child: Image(
            image: AssetImage(
                "assets/logo.png"),
                // "https://img-highend.okezone.com/okz/900/pictureArticle/images_7x4W68RJ_59k0HO.jpg"),
                fit:BoxFit.contain, repeat: ImageRepeat.repeatX,
                ), //Network Image sabi juga
      )),
    ));
  }
}
//STL -> Shortcut stateless widget.
