//* builder property, for inserting widgets above the Navigator
//* proeperti ini jarang digunakan tetapi dapat digunakan untuk menimpa defaults
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
    return  const MaterialApp(
        // builder: (context, child) => , //*
        home:  HomePage(),
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