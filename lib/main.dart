//* Selain menggunakan home, kita juga dapat menggunakan initalRoute untuk navigasi
//*
//*
//*
//*



import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false, //* Menghilangkan debug banner
      // debugShowMaterialGrid: true, //* Untuk Menampilkan Grid
      // home: const HomePage(),
      // initialRoute: '/',
      routes:{
        '/' :(context) => const HomePage()
      },
      //* onGenerateRoute gives you asingle place to add custom business logic before pussing new routes (pages)
      //* Routes is static doesn't offer functionalities like passing an argument to the widget / value
      // onGenerateRoute: , 

    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('InitialRoute dan Route'),),
    );
  }
}