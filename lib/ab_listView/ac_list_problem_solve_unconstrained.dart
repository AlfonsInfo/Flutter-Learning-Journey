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
        UnconstrainedBox(child: createBlock(Colors.blueAccent)),
        UnconstrainedBox(child: createBlock(Colors.blueAccent)),
        UnconstrainedBox(child: createBlock(Colors.blueAccent)),
        UnconstrainedBox(child: createBlock(Colors.blueAccent)),
        UnconstrainedBox(child: createBlock(Colors.blueAccent)),
        UnconstrainedBox(child: createBlock(Colors.blueAccent)),
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
