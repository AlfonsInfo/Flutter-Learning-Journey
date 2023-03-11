import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
  List<Container> _buildGridTileList(int count) => List.generate(count
  , (i) => Container(child:Image.network("https://picsum.photos/200")));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.extent(
        maxCrossAxisExtent: 200,
        padding: const EdgeInsets.all(4),
        crossAxisSpacing: 4,
        children: _buildGridTileList(14)) 
        );
  }

}