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
          //* Dengan cross, dia rata kiri (start), dan rata kanan (end) 
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  <Widget>[
            //* Bagian terdalam dari widget dimintain menggunakan const -> asal nilai tidak berubah
            const Text('ini teks panjang banget'),
            Container(
              decoration: BoxDecoration(border:  Border.all(color:Colors.black)),
              child: const Text('text2',),),
            const Text('text3'),
            const Text('text4'),
          ],
        ),
      ),
    );
  }
}
