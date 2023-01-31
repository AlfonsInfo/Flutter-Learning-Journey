import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Center(child: Text("Flexible Layout"))),
            body: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                            Flexible(
                                flex: 1, child: Container(color: Colors.white)),
                            Flexible(
                                flex: 1,
                                child: Container(color: Colors.black12))
                          ],
                        )),
                    Flexible(
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                            Flexible(
                                flex: 1, child: Container(color: Colors.black12)),
                            Flexible(
                                flex: 1,
                                child: Container(color: Colors.white))
                          ],
                        ))
                  ],
                ),
                ListView(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(child: Text("Ini adalah text yang dilapisan tengah dari stack",style: TextStyle(fontSize: 30)),margin: EdgeInsets.all(10)),
                        Container(child: Text("Ini adalah text yang dilapisan tengah dari stack",style: TextStyle(fontSize: 30)),margin: EdgeInsets.all(10)),
                        Container(child: Text("Ini adalah text yang dilapisan tengah dari stack",style: TextStyle(fontSize: 30)),margin: EdgeInsets.all(10)),
                        Container(child: Text("Ini adalah text yang dilapisan tengah dari stack",style: TextStyle(fontSize: 30)),margin: EdgeInsets.all(10)),
                        Container(child: Text("Ini adalah text yang dilapisan tengah dari stack",style: TextStyle(fontSize: 30)),margin: EdgeInsets.all(10)),
                        Container(child: Text("Ini adalah text yang dilapisan tengah dari stack",style: TextStyle(fontSize: 30)),margin: EdgeInsets.all(10)),
                        Container(child: Text("Ini adalah text yang dilapisan tengah dari stack",style: TextStyle(fontSize: 30)),margin: EdgeInsets.all(10)),
                        Container(child: Text("Ini adalah text yang dilapisan tengah dari stack",style: TextStyle(fontSize: 30)),margin: EdgeInsets.all(10)),
                        Container(child: Text("Ini adalah text yang dilapisan tengah dari stack",style: TextStyle(fontSize: 30)),margin: EdgeInsets.all(10)),
                        Container(child: Text("Ini adalah text yang dilapisan tengah dari stack",style: TextStyle(fontSize: 30)),margin: EdgeInsets.all(10)),
                        Container(child: Text("Ini adalah text yang dilapisan tengah dari stack",style: TextStyle(fontSize: 30)),margin: EdgeInsets.all(10)),
                        Container(child: Text("Ini adalah text yang dilapisan tengah dari stack",style: TextStyle(fontSize: 30)),margin: EdgeInsets.all(10)),
                        Container(child: Text("Ini adalah text yang dilapisan tengah dari stack",style: TextStyle(fontSize: 30)),margin: EdgeInsets.all(10)),
                        Container(child: Text("Ini adalah text yang dilapisan tengah dari stack",style: TextStyle(fontSize: 30)),margin: EdgeInsets.all(10)),
                        Container(child: Text("Ini adalah text yang dilapisan tengah dari stack",style: TextStyle(fontSize: 30)),margin: EdgeInsets.all(10)),
                        Container(child: Text("Ini adalah text yang dilapisan tengah dari stack",style: TextStyle(fontSize: 30)),margin: EdgeInsets.all(10)),
                        Container(child: Text("Ini adalah text yang dilapisan tengah dari stack",style: TextStyle(fontSize: 30)),margin: EdgeInsets.all(10)),
                        Container(child: Text("Ini adalah text yang dilapisan tengah dari stack",style: TextStyle(fontSize: 30)),margin: EdgeInsets.all(10)),
                        Container(child: Text("Ini adalah text yang dilapisan tengah dari stack",style: TextStyle(fontSize: 30)),margin: EdgeInsets.all(10)),
                        Container(child: Text("Ini adalah text yang dilapisan tengah dari stack",style: TextStyle(fontSize: 30)),margin: EdgeInsets.all(10)),
                        Container(child: Text("Ini adalah text yang dilapisan tengah dari stack",style: TextStyle(fontSize: 30)),margin: EdgeInsets.all(10)),
                        Container(child: Text("Ini adalah text yang dilapisan tengah dari stack",style: TextStyle(fontSize: 30)),margin: EdgeInsets.all(10)),
                      ],
                    )
                  ],
                ),
                Align(alignment: Alignment.bottomCenter ,child:ElevatedButton(child: Text("Ini Button"), style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo), onPressed: (){}, ))
                //background
                //listview dengan text
              ],
            )));
  }
}
//STL -> Shortcut stateless widget.
