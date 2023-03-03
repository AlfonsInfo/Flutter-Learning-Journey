import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage() ,
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 500,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(child: blockContent(Colors.green)),
            blockContent(Colors.red),
            Flexible(
              flex: 2,
              child: blockContent(Colors.yellow),
            ),
            blockContent(Colors.green),
            Expanded(child: blockContent(Colors.red)),
            Flexible(
              flex: 2,
              child: blockContent(Colors.yellow),
            )
          ],
        ),
      ),
    );
  }

  Container blockContent(value) {
    return Container(
          color: value,
          width: 100,
          height: 100,
        );
  }
}