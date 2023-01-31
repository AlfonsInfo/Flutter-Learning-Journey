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
List<Widget> widgets = [];

_MyAppState()
{
  for(int i = 0 ; i < 16 ; i ++)
    widgets.add(Text("Data ke - " +  i.toString(), style: TextStyle(fontSize: 35),));
}

  String message = "ini adalah Text";

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("List & ListView"))),
        body: Column(children: widgets),
      ),
    );
  }
}
//STL -> Shortcut stateless widget.
