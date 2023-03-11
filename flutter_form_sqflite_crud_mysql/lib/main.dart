import 'package:flutter/material.dart';
import 'package:d_info/d_info.dart';
import 'package:d_method/d_method.dart';
import 'package:flutter_form_sqflite_crud_mysql/ab_Navigasi%20dan%20Route/aa_push_pop%20.dart';

void main() {
  runApp(const MainApp());
}

//*Gerbang Aplikasi
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}



  AppBar showAppBar(Title) {
    return AppBar(
      title: Text(Title),
    );
  }