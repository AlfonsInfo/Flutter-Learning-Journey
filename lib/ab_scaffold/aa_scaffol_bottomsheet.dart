//*
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

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        // primaryColor: Colors.yellow //*?
      ),
      // color: Colors.red,
      home: HomePage(),
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
      appBar: AppBar(
        title: const Text('Lovely Scffold'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (_) {
                    return Container(
                      height: 200,
                      // color: Colors.,
                      child: Center(
                        child: Column(
                          children: [
                            Text('Text1'),
                            Text('Text1'),
                            Text('Text1'),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: const Text('Show Modal Bottom Sheet'))),
    );
  }
}
