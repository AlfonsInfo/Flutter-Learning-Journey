import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:studio_olahraga_app/autentikasi/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),),
      body: Center(child: 
      ElevatedButton(child: Text("Log Out"),onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
            return LoginPageState();
          }));
      },)),
    );
  }
}