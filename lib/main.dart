import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 0;


  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("List & ListView"))), 
        body: ListView(children: <Widget>[
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, // sisa space dibagi rata
          children : <Widget> [
          ElevatedButton(child: Text("Tambah Data"), onPressed: ()
          {
            setState(() {
              widgets.add(Text("Data ke-" + counter.toString()));
              counter++;
            });
          }),
          ElevatedButton(child: Text("Hapus Data"),onPressed: (){
            setState(() {
            widgets.removeLast();
            counter--;
            });
          },)
          ] 
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgets,)
          ]
        )
      ),
    );
  }
}
//STL -> Shortcut stateless widget.
