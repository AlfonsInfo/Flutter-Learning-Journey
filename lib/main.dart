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
          appBar: AppBar(title:Center(child: Text("Latihan Row dan Column"),) ),
          body: Column(children: <Widget>[
            Text("Text1"),
            Text("Text2"),
            Text("Text3"),
          ]),
      )
    );  
  }
}

//STL -> Shortcut stateless widget.
