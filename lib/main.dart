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

  late TextEditingController _controllerUsername;
  late TextEditingController _controllerPassword;

  //*DI flutter ada juga state aplikasinya
  @override
  void initState()
  {
    _controllerUsername = TextEditingController();
    _controllerPassword = TextEditingController();
  }

  // * void dispose ?

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: showLoginPage([_controllerUsername,_controllerPassword]),
    );
  }

  // @override
  // void setState(VoidCallback fn) {
  // }
}
  
// showLoginPage


