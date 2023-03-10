import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: AppBar(
            backgroundColor: Colors.amber,
            flexibleSpace: Align(
              alignment: Alignment.bottomRight,
              // bottom: 0,
              // right: 0,
              child: Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  "Heyoo",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            // title: Text("AppBar With Custom Height"),
          ),
        ),
      ),
    );
  }
}
