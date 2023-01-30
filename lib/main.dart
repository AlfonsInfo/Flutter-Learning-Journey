import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String message = "ini adalah Text";

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("Anonymous Method"))),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
              // Method hanya dipanggil 1x saja
              ElevatedButton(onPressed: ()=>{
                //setState merupakan anonymous method, sebelum dia dijalankan dia membutuhkan method lain terlebih dahulu untuk dijalankan ( sebelum dia updatae tampilan)
                setState(() {
                message = "Tombol sudah ditekan";
                })
              },child: Text("Tekan Saya"))
            ],) ),
      ),
    );
  }
}
//STL -> Shortcut stateless widget.
