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

  TextEditingController controller = TextEditingController(text: "nilai awal");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.green,
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
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(controller : controller,onChanged: (value){ setState(() {/*value penanda perubahan */ });} ,obscureText:  false /* password*/ , maxLength: 10,),
            Text(controller.text)
            // buildCard(Icons.account_box, "Account Box"),
            // buildCard(Icons.adb, "Android"),
            // buildCard(Icons.access_alarm, "Arm"),
          ],
        ),
      ),
    ));
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
            elevation: 5,
            child: Row(
              children: [Container(margin:EdgeInsets.all(5) ,child: Icon(iconData)), Text(text)],
            ),
          );
  }
}
//STL -> Shortcut stateless widget.
