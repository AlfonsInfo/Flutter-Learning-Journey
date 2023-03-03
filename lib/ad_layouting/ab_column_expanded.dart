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
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red)
        ),
        child: Column(
          // mainAxisAlignment: ,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent,
            ),
            //* Mengisi tempat kosong secara vertikal
            Expanded(
              child: Container(
                width: 100, //* Mendefinisikan warna
                color: Colors.amberAccent,
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent,
            ),
          ],
        ),
      )
    );
  }
}