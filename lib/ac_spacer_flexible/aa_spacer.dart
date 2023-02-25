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
                Row(
                  children: [
                    createBlock(Colors.red),
                    const Spacer(flex: 1,),
                    createBlock(Colors.green),
                    const Spacer(flex: 1,),
                    createBlock(Colors.blue),
                    const Spacer(flex: 1,),
                  ],
                ),
                Spacer(flex: 1,), //* flex -> perbandingan jaraknya , key control how widget replaces another widget in tree
                Row(
                  children: [
                    const Spacer(flex: 2,),
                    createBlock(Colors.red),
                    const Spacer(flex: 1,),
                    createBlock(Colors.green),
                    const Spacer(flex: 1,),
                    createBlock(Colors.blue),
                    const Spacer(flex: 2,),
                  ],
                ),
                Spacer(flex: 10,),
                Row(
                  children: [
                    const Spacer(flex: 2,),
                    createBlock(Colors.red),
                    const Spacer(flex: 1,),
                    createBlock(Colors.green),
                    const Spacer(flex: 1,),
                    createBlock(Colors.blue),
                    const Spacer(flex: 2,),
                  ],
                ),
                Spacer(flex: 10,),
              ],
            ) 
        ),
    );
  }

  Container createBlock(Color colorBlock) {
    return Container(
      decoration: BoxDecoration(color: colorBlock),
      width: 100,
      height: 100,
      child: const Center(child: Text('Text Center')),
    );
  }
}
