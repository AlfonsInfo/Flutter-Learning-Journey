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
        //? column : Menyusun widget pada satu kolom yang sama (secara vertikal)
        body: Column(
          //* kalo const mengatasi : prefer_const_constructor , prefer_const_literals_to_create_immutables, to improve perfomances
          children: const [
            Text('mantap'),
            Text('text2'),
            Text('text4'),
            Text('text4'),
            Text('text5'),
          ],
        ),
      ),
    );
  }
}
