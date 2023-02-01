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

  Color colorRed = Colors.red;
  Color colorAmber  = Colors.amber;
  bool isAccepted = false;
  Color ?targetColor;

  TextEditingController controller = TextEditingController(text: "nilai awal");
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable<Color>(
                  data: colorRed,
                  child:  SizedBox(width: 50, height: 50,child : Material(color: colorRed, shape: StadiumBorder(),elevation: 5,)),
                  childWhenDragging:SizedBox(width: 50, height: 50,child : Material(color: Colors.grey.withOpacity(0.7), shape: StadiumBorder(),elevation: 5,)),
                  feedback: SizedBox(width: 50, height: 50,child : Material(color: colorRed.withOpacity(0.5), shape: StadiumBorder(),elevation: 5,)),), //Stadium border utnuk membuat ujung kiri dan kanan melengkung
                Draggable<Color>(
                  data: colorAmber,
                  child:  SizedBox(width: 50, height: 50,child : Material(color: colorAmber, shape: StadiumBorder(),elevation: 5,)),
                  childWhenDragging:SizedBox(width: 50, height: 50,child : Material(color: Colors.grey.withOpacity(0.7), shape: StadiumBorder(),elevation: 5,)),
                  feedback: SizedBox(width: 50, height: 50,child : Material(color: colorAmber.withOpacity(0.5), shape: StadiumBorder(),elevation: 5,)),) //Stadium border utnuk membuat ujung kiri dan kanan melengkung
              ],
            ),
            DragTarget<Color>(
              onWillAccept: (value) =>true,
              onAccept: (value){isAccepted = true; targetColor = value;},
              builder: (context, candidateData, rejectedData){
                return (isAccepted) ? 
                   SizedBox(width: 100, height: 100,child : Material(color: targetColor, shape: StadiumBorder(),elevation: 5,)) : //Stadium border utnuk membuat ujung kiri dan kanan melengkung
                  SizedBox(width: 100, height:100,child : Material(color: Colors.black26, shape: StadiumBorder(),elevation: 5,)) ;
              }
            )
          ],
      )
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
