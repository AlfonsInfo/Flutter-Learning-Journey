
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp()
 );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // debugShowMaterialGrid: true,
      home: Screen() ,
    );
  }
}

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    final platformHeight = MediaQuery.of(context).size.height; //* Benar-benar ukuran layar aplikasi
    final platformWidth = MediaQuery.of(context).size.width;  

    return  Scaffold(
      backgroundColor: Colors.teal,
      // appBar: customAppBar(),
      body: 
      // Container(color: Colors.black,) //* By default biggest as possible
      // customContainer() //* Saat ada childnya, langsung menyesuaikan ukuran child.
      // containerInsideColumn() //* Saat ada di dalam column, langsung tidak biggest as possible
      // customSafeArea(platformWidth, platformHeight)
      SafeArea(child: Container())
      ,
    );
  }

  SafeArea customSafeArea(double platformWidth, double platformHeight) {
    return SafeArea(child: Container( //* menaruh widget ditempat yang aman bagi user
      // height: 100,
      // width: 100,
      color: Colors.white,
      child: Row(
        children: [
            SizedBox(
              width: platformWidth * 1/2,
              height: platformHeight * 1/2,
              child: Container(
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: platformWidth * 1/2,
              height: platformHeight * 1/2,
              child: Container(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: platformHeight * 1/2,
              child: Container(
                color: Colors.white,
              ),
            ),
        ],
      ) ,
    ),);
  }

  

  Column containerInsideColumn() {
    return Column(
      children: [
        Container(
          color: Colors.blue,
          // child: Text('data'),
        )
      ],
    );
  }

  Container customContainer() => Container(color: Colors.cyan,child: const Text('data'));

  AppBar customAppBar() {
    return AppBar(
      title: const Text('SANDBOX'),
      centerTitle: true,
    );
  }
}