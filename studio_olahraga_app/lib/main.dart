import 'package:flutter/material.dart';
import 'autentikasi/login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {


  // * void dispose ?

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPageState(),
    );
  }

  // @override
  // void setState(VoidCallback fn) {
  // }
}
  
// showLoginPage


