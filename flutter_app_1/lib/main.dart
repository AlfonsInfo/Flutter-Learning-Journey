import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Gradient Opacity"),
        ),
        body: Center(
            child: ShaderMask(
              shaderCallback: (rectangle){
                return LinearGradient(colors: [Colors.black,Colors.transparent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
                ).createShader(Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
              },
              blendMode: BlendMode.dst,
              child: Image(
                width: 300,
                      image: AssetImage("assets/sunset.jpg"),
                    ),
            )),
      ),
    );
  }
}
