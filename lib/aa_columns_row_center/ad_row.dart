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
        body: Container(
          height: 200,
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Row(
            //! Row : [] [] []
            //! Column :
            //! []
            //! []
            //! []
            //* Meletakan ditengah dari row
            // mainAxisAlignment: MainAxisAlignment.center,
            //*Meletakan dibagian bawah dari row
            // mainAxisAlignment: MainAxisAlignment.end,
            //*Meletakan pada 1 row dengan jarak : //* half | equals | equals | half
            // mainAxisAlignment: MainAxisAlignment.spaceAround, 
            //*Meletakan pada 1 row dengan jarak : equals | equals | equals
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //* Dengan cross, dia rata kiri (start), dan rata kanan (end) 
            crossAxisAlignment: CrossAxisAlignment.center,
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
      ),
    );
  }
}
