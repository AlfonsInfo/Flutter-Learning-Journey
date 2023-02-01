import 'package:flutter/material.dart';
import 'package:flutter_app_1/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MediaQueryPage(),
    );
  }
}
//STL -> Shortcut stateless widget.

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Latihan Media Query")),
      body: Column(
        children:  [
          (MediaQuery.of(context).orientation == Orientation.portrait)?
          Row(
            children:generateContainer(context),
          ) : 
          Column(
            children:generateContainer(context),
          )  
        ],
      ),
    );
  }

  List<Widget> generateContainer(BuildContext context) {
    return <Widget>[
            Container(
              width: 100, //MediaQuery.of(context).size.width / 3,
              height: 100,//MediaQuery.of(context).size.width / 2,
              color: Colors.red,
            ),
            Container(
              width: 100,//MediaQuery.of(context).size.width / 3,
              height: 100,//MediaQuery.of(context).size.width / 2,
              color: Colors.blue,
            ),
            Container(
              width: 100,//MediaQuery.of(context).size.width / 3,
              height: 100,//MediaQuery.of(context).size.width / 2,
              color: Colors.amber,
            ),
          ];
  }
}
