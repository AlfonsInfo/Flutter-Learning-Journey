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
        body: Row(
          children: [
            ListView(
              scrollDirection: Axis.horizontal,
              children: [
                createBlock(Colors.grey),
                createBlock(Colors.black),
                createBlock(Colors.amber),
                createBlock(Colors.amberAccent),
                createBlock(Colors.brown),
                createBlock(Colors.blue),
                createBlock(Colors.blue[300]!),
                createBlock(Colors.blue[400]!),
                createBlock(Colors.blue[500]!),
                createBlock(Colors.grey),
                createBlock(Colors.black),
                createBlock(Colors.amber),
                createBlock(Colors.amberAccent),
                createBlock(Colors.brown),
                createBlock(Colors.blue),
                createBlock(Colors.blue[300]!),
                createBlock(Colors.blue[400]!),
                createBlock(Colors.blue[500]!),
              ],
            ),
          ],
        ), 
      )
        
      
      )
      ;
  }

  Container createBlock(Color colorBlock) {
    return Container(
              decoration: BoxDecoration(color: colorBlock),
              width: 100,
              height: 100,
              child: const Center(child:  Text('Text Center')),
            );
  }
}
