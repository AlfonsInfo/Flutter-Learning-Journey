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
      home: InkWellTutor(), 
      // home: MediaQueryPage(),
    );
  }
}
//STL -> Shortcut stateless widget.

// Part 23

// Part 22 
class InkWellTutor extends StatelessWidget {
  const InkWellTutor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Latihan Membuat Button"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ElevatedButton(onPressed: (){}, child: Text("Elevated Button"),style: ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))),),
            customButton(),
          ]),
      ),
    );
  }

  Material customButton() {
    return Material(
            borderRadius: BorderRadius.circular(20),
            elevation: 2,
            child: Container(
              width: 150,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: [Colors.purple, Colors.pink], begin:Alignment.topCenter, end: Alignment.bottomCenter)
              ),
              child: Material( // kelih
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.deepPurpleAccent,
                  onTap: (){},
                  borderRadius: BorderRadius.circular(20),
                  child: Center(child: Text("My Button", style:  TextStyle(color: Colors.white, fontWeight: FontWeight.w600 ),)),
                ),
                  
              ),
            ),
          );
  }
}
// Part 22


//Part 21 Media Query
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
