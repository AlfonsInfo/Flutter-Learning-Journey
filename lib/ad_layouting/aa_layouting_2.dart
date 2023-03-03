//* app_bar -> tidak untuk navigasi
//*
//*
//*
//*
//*
//*

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage() ,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column dan Row'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.amberAccent,
        child: Column
        (
          mainAxisSize: MainAxisSize.max, //*
          textDirection: TextDirection.rtl, //* 
          verticalDirection: VerticalDirection.up, //* Arah susunannya
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end, //* Tergantung Kontennya
          children: [
            Text('data 1'),
            Text('data 2'),
            Text('data 3'),
          ],
        ),
      )
    );
  }
}