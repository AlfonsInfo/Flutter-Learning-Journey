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
  TextEditingController controller = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              leading: Icon(Icons.adb, color: Colors.white),
              title: Text("AppBar Example"),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
                IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),
              ],
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xff0096ff), Color(0xff6610f2)],
                      begin: FractionalOffset.topLeft,
                      end: FractionalOffset.bottomRight),
                  // image: DecorationImage(image: AssetImage("assets/pattern.jpg"), fit: BoxFit.none, repeat: ImageRepeat.repeat) //gunakan pattern semi transparan
                ),
              ),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    margin: EdgeInsets.all(30),
                    child: TextField(
                      controller: controller,
                      onChanged: (value) {
                        setState(() {});
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          icon: Icon(Icons.account_box),
                          //prefix: Container(width: 5, height: 5, color: Colors.red,),
                          //Declaring both prefix and prefixText not supported
                          //suffix
                          //fillcolor & filled
                          //
                          prefixIcon: Icon(Icons.account_box),
                          prefixText: "Name ",
                          prefixStyle: TextStyle(color: Colors.blue),
                          labelText: "Nama User",
                          labelStyle: TextStyle(fontSize: 30 ),
                          hintText: "Username"),
                    ))
              ],
            )));
  }
}
//STL -> Shortcut stateless widget.
