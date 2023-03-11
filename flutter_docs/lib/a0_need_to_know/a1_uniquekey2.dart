import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(new MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> tiles = [
    Content(
      key: UniqueKey(),
      myColor: Colors.red,
    ),
    Content(
      key: UniqueKey(),
      myColor: Colors.green,
    ),
  ];
  swapTiles() {
    setState(() {
      tiles.insert(1, tiles.removeAt(0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: tiles,
      ),
      floatingActionButton: FloatingActionButton(onPressed: swapTiles,
      child: Icon(Icons.swap_calls)),
    );
  }
}

class Content extends StatefulWidget {
  Color? myColor = Color.fromARGB(255, 0, 0, 1);
  Content({super.key, this.myColor});

  @override
  State<Content> createState() => _ContentState(myColor);
}

class _ContentState extends State<Content> {
  var myColor;
  _ContentState(this.myColor);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: myColor,
    );
  }
}
