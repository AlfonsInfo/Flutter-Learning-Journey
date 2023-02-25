import 'package:flutter/material.dart';

//* Somehow mediaquery harus ditaruh dikelas yang terpisah? dari main class?
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WidgetContainer()
    );
  }
}


class WidgetContainer extends StatelessWidget {
  const WidgetContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            UnconstrainedBox(
              alignment: Alignment.center,
              child: Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.all(50),
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage('https://picsum.photos/300/300')),
                  border: Border.all(color: Colors.black),
                  // borderRadius: BorderRadius.circular(5),//! conflit borderradius dan shape
                  shape: BoxShape.circle),
              ),
            ),
            UnconstrainedBox(
              alignment: Alignment.center,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage('https://picsum.photos/300/300')),
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5)),
              ),
            ),
            // UnconstrainedBox(child: Container1(context)),
            // UnconstrainedBox(child: Container1(context)),
          ],
        ),
      ),
    );
  }

  Container Container1(BuildContext context) {
    return Container(
        // key: key(), //!Key?
        alignment: Alignment.center, //* posisi childnya
        padding: EdgeInsets.all(50),
        width: MediaQuery.of(context).size.width *1/2,
        height: 200,
        margin: EdgeInsets.all(30),
        // color: Colors.blue[400], //!hanya boleh salah satu color atau box decoration
        decoration: BoxDecoration(color: Colors.amberAccent , borderRadius: BorderRadius.circular(5)),
        child: Container
        (
          decoration: BoxDecoration(border: Border.all(color: Colors.black12)), //* BoxDecoration Extensd decoration
          child: Text('ini Child Container')),
      );
  }

  Container Container2(BuildContext context) {
    return Container(
        alignment: Alignment.center, //* posisi childnya
        padding: EdgeInsets.all(50),
        width: MediaQuery.of(context).size.width *1/2,
        height: 200,
        child: Container
        (
          decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
          child: const Text('Container 2')),
      );
  }
}