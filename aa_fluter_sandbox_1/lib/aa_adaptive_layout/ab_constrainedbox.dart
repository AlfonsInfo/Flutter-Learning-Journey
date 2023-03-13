// ignore_for_file: non_constant_identifier_names
// * Source Creating Adaptive and Responsive Apps Flutter Doc
// *

import 'package:flutter/material.dart';
import '../src/people.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "A SANDBOX APPS",
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          // visualDensity: VisualDensity(horizontal: 4.0, vertical: 3.0),
        ),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar('LayoutWidgets'),
      body:  Container(
        color: Colors.amber,
        child: Center(child: const ConstrainedBody()))
    );
  }

  AppBar createAppBar(String TextAppBar) {
    return AppBar(
      title:  Text(TextAppBar),
    );
  }

  Container createContainer()
  {
    return Container(
      width: 100,
      height: 100,
      color: Colors.redAccent,
    );
  }
}


class ConstrainedBody extends StatelessWidget {
  const ConstrainedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(constraints: 

    const BoxConstraints(
      minWidth: 100,
      maxWidth: 1000,
      // minHeight: 100,
      maxHeight: 200
    ),
    child: Container(
      // width: 100, //* jika width > min width  , real_width = width, width<min-width = width = minwidth
      color: Colors.red,
      // child: Text('ini contentnya yaaaaaaaaaaaaaaaaaa'),
    ),
    );
  }
}