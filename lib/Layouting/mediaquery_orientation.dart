import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

//* MediaQuery
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Latihan Media Query Lagiii'),
        ),
        body: (MediaQuery.of(context).orientation == Orientation.landscape)
            ? Column(children: GenerateContainer())
            : Row(
                children: GenerateContainer(),
              ));
  }
}

List<Widget> GenerateContainer() {
  return <Widget>[
    Container(
      color: Colors.red,
      width: 100,
      height: 100,
    ),
    Container(
      color: Colors.blue,
      width: 100,
      height: 100,
    ),
    Container(
      color: Colors.green,
      width: 100,
      height: 100,
    ),
  ];
}
