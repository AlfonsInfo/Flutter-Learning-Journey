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
        body: Column(
          //* Meletakan ditengah dari kolom
          // mainAxisAlignment: MainAxisAlignment.center,
          //*Meletakan dibagian bawah dari kolom
          // mainAxisAlignment: MainAxisAlignment.end,
          //*Meletakan pada 1 kolom dengan jarak : //* half | equals | equals | half
          // mainAxisAlignment: MainAxisAlignment.spaceAround, 
          //*Meletakan pada 1 kolom dengan jarak : equals | equals | equals
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //* kalo const mengatasi : prefer_const_constructor , prefer_const_literals_to_create_immutables, to improve perfomances
          children: const [
            Text('ini teks panjang banget'),
            Text('text2'),
            Text('text3'),
            Text('text4'),
          ],
        ),
      ),
    );
  }
}
