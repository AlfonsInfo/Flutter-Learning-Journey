import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(new MaterialApp(
    home: PositionedTiles(),
  ));
}

class PositionedTiles extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PositionedTilesState();
}

class PositionedTilesState extends State<PositionedTiles> {
  List<Widget> tiles = [
    // StatelessColorfulTile(Colors.red),
    // StatelessColorfulTile(Colors.blue),
    StatefulColorfulTile(key: UniqueKey(),),
    StatefulColorfulTile(key: UniqueKey(),),
    StatefulColorfulTile(), //* tidak akan bisa berubh warna nya
    StatefulColorfulTile(), //* jika salah satu key , satu engga satunya lagi random 

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: tiles),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.sentiment_very_satisfied), onPressed: swapTiles),
    );
  }

  swapTiles() {
    setState(() {
      tiles.insert(1, tiles.removeAt(0));
      tiles.insert(3, tiles.removeAt(2));
    });
  }
}

class StatelessColorfulTile extends StatelessWidget {
  Color myColor;
  StatelessColorfulTile(this.myColor);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: myColor, child: Padding(padding: EdgeInsets.all(70.0)));
  }
}


class StatefulColorfulTile extends StatefulWidget {
  // StatefulColorfulTile({Key? key}) : super(key: key);  // NEW CONSTRUCTOR
  const StatefulColorfulTile({super.key});
  @override
  ColorfulTileState createState() => ColorfulTileState();
}

class ColorfulTileState extends State<StatefulColorfulTile> {
  Color myColor = Color.fromARGB(255, 0, 0, 0);

  @override
  void initState() {
    super.initState();
    myColor = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: myColor,
        child: Padding(
          padding: EdgeInsets.all(70.0),
        ));
  }
}