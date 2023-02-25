import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
              children: [
                Flexible(
                  flex: 2, //* Secara Vertikal (Kolom) ukurannya 2 x lebih besar dari widget setingkat
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: createBlock(Colors.deepPurpleAccent)),
                      Flexible(
                        flex: 3,
                        child: createBlock(Colors.redAccent)),
                      Flexible(
                        flex: 1,
                        child: createBlock(Colors.blue)),
                    ],
                  ),),
                Flexible(
                  flex: 1,
                  child: createBlock(Colors.green),),
                Flexible(
                  flex: 1,
                  child: createBlock(Colors.blue),),
              ],
            ) 
        ),
    );
  }

  Container createBlock(Color colorBlock) {
    return Container(
      decoration: BoxDecoration(color: colorBlock),
      // width: 100,
      // height: 100,
      child: const Center(child: Text('Text Center')),
    );
  }
}
