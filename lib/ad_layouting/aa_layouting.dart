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
          border: Border.all(color: Colors.black)
        ),
        child: Column(
          children: [
            Text('data 1'),
            Text('data 2'),
            Text('data 3'), 
            Text('data 4'),
          ],
        ),
      )
    );
  }
}