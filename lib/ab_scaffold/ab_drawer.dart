//*
//*
//*
//*
//*
//*
//*

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        // primaryColor: Colors.yellow //*?
      ),
      // color: Colors.red,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                // color: Colors.blue
                color: Colors.redAccent
              ),
              child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () => showBottomList(context),
              ),
              ListTile(
                title: const Text('Item 2'),
              ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Lovely Scffold'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
              },
              child: const Text('Show Modal Bottom Sheet'))),
    );
  }

  Future<dynamic> showBottomList(BuildContext context) {
    return showModalBottomSheet(
                context: context,
                builder: (_) {
                  return Container(
                    height: 200,
                    // color: Colors.,
                    child: Center(
                      child: Column(
                        children: [
                          Text('Text1'),
                          Text('Text1'),
                          Text('Text1'),
                        ],
                      ),
                    ),
                  );
                },
              );
  }
}
