import 'package:flutter/material.dart';
import 'package:d_info/d_info.dart';
import 'package:d_method/d_method.dart';
import 'package:flutter_form_sqflite_crud_mysql/ab_Navigasi%20dan%20Route/aa_push_pop%20.dart';

void main() {
  runApp(const MainApp());
}

ElevatedButton ButtonRoute(BuildContext context,String nama, alamat) {
    return ElevatedButton(
            child: Text(nama),
            onPressed: (){
              Navigator.pushNamed(context, alamat);
            },);
  }

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'buat_Form',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      // home: const Home(),
      initialRoute: '/',
      routes: {
        '/' : (BuildContext context)
        {
          return Home();
        },
        '/Contact' : (BuildContext context) => Contact(),
        '/Product' : (context) => Product(), 
        
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar('Home'),
      body: Center(
        child : Column(
          children: [
            ButtonRoute(context,'Product','/Product'),
            ButtonRoute(context,'Contact','/Contact'),
            
          ],
        )
      ),
    );
  }

}

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar('Contact'),
      body: Center(
        child : Column(
          children: [
            ButtonRoute(context,'Product','/Product'),
            ButtonRoute(context,'Home','/'),
            
          ],
        )
      ),
    );
  }
}


class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar('Product'),
    );
  }
}



  AppBar showAppBar(Title) {
    return AppBar(
      title: Text(Title),
    );
  }