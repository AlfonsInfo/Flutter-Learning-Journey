import 'package:flutter/material.dart';

//* Somehow mediaquery harus ditaruh dikelas yang terpisah? dari main class?
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Main()
    );
  }
}


class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent,
        width: MediaQuery.of(context).size.width *1/2,
        height: MediaQuery.of(context).size.height *3/4,
      ),
    );
  }
}