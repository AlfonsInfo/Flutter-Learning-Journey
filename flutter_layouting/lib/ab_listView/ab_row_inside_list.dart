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
            body: ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            createBlock(Colors.blueAccent),
            createBlock(Colors.blueAccent),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            createBlock(Colors.blueAccent),
            createBlock(Colors.blueAccent),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween ,
          children: [
            createBlock(Colors.blueAccent),
            createBlock(Colors.blueAccent),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween ,
          children: [
            createBlock(Colors.blueAccent),
            createBlock(Colors.blueAccent),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween ,
          children: [
            createBlock(Colors.blueAccent),
            createBlock(Colors.blueAccent),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween ,
          children: [
            createBlock(Colors.blueAccent),
            createBlock(Colors.blueAccent),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween ,
          children: [
            createBlock(Colors.blueAccent),
            createBlock(Colors.blueAccent),
          ],
        ),
      ],
    )));
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
