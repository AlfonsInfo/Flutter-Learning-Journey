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
            appBar: AppBar(title: Center(child: Text("Flexible Layout"))),
            body: Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Flexible(flex: 1, child: Container(color: Colors.red, margin: EdgeInsets.all(5),)),
                        Flexible(flex: 1, child: Container(color: Colors.green,margin: EdgeInsets.all(5))),
                        Flexible(flex: 1, child: Container(color: Colors.amber, margin: EdgeInsets.all(5))),
                      ],
                    ),
                  )),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.blue,
                    margin: EdgeInsets.all(5)
                  )),
                Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.yellow,
                      margin: EdgeInsets.all(5)
                    )),
              ],
            ),

        )
    );
  }
}
//STL -> Shortcut stateless widget.
