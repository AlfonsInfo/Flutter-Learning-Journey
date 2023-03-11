import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Column(children: [
              createBlock(Colors.red),
              createBlock(Colors.amberAccent),
              createBlock(Colors.green),
            ],),
            Column(children: [
              createBlock(Colors.amberAccent),
              createBlock(Colors.green),
              createBlock(Colors.red),
            ],),
          ],)
        ),
      );
  }

  Container createBlock(Color colorBlock) {
    return Container(
              decoration: BoxDecoration(color: colorBlock),
              width: 100,
              height: 100,
              child: const Center(child: Text('Text Center')),
            );
  }
}
