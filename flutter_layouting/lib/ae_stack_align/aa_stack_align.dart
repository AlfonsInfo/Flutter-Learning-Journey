import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
//* Stack -> Tumpukan dari Widget
//* Pada Stack Tergantung pada parent widgetnya untuk penempatan 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(border: Border.all(color: Colors.black),),
            child: Stack(
              children: [
                createBlock(Colors.red,300,300),
                Center(child: createBlock(Colors.black,100,50)),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: createBlock(Colors.white,100,100)),
              ],
            ),
          ),
        ) 
            
        );
      
  }

  Container createBlock(Color colorBlock,double width,double height) {
    return Container(
      decoration: BoxDecoration(color: colorBlock),
      width: width,
      height: height,
      child: const Center(child: Text('Text Center')),
    );
  }
}
