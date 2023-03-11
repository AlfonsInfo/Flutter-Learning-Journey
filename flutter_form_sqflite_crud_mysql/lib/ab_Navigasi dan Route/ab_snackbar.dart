import 'package:flutter/material.dart';
import 'package:d_info/d_info.dart';
import 'package:d_method/d_method.dart';
import 'package:flutter_form_sqflite_crud_mysql/ab_Navigasi%20dan%20Route/aa_push_pop%20.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'buat_Form',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ShowAppBar('Halaman Pertama'),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              SnackBar snackBar = SnackBar(content: Text('Pindah Ke halaman 2'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return SecondPage(value : 2);
                }),
              );
          
            },
            child: Text('Buka Screen Kedua')),
      ),
    );
  }

}

class SecondPage extends StatelessWidget {
  final int value;
  const SecondPage({super.key,required this.value});
  
  // const SecondPage({Key key , @required this.value}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ShowAppBar('Halaman Kedua'),
      body: Column(
        children: [
          Center(
            child : Text('data $value'),
          ),
        ],
      ),
    );
  }
}
  AppBar ShowAppBar(Title) {
    return AppBar(
      title: Text(Title),
    );
  }