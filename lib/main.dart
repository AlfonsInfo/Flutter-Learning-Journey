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
  void tekanTombol(){}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title:Text("Stateful Widget"),),
      body: Center(child: Column(
        children: <Widget>[
          Text("12"),
          ElevatedButton(onPressed: tekanTombol, child: Text("Tambah Bilangan"))
        ],
      ),)),
    );
  }
}
//STL -> Shortcut stateless widget.
