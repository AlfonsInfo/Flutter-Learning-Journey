import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

//* Bagian Halaman Pertama dari program
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: showAppBar(),
        body: showBody(),
    );
  }


  //* Penyusun Halaman
  Center showBody() => Center(child: Text('Ini Text Ditengah'),);

  AppBar showAppBar(){
    return AppBar(title: Text("Hello"));
  } 
    
}