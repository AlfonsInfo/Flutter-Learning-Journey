import 'package:flutter/material.dart';
import 'package:flutter_app_1/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('ini text'),
            bottom: TabBar(tabs: <Widget>[
              Tab(
                icon: Icon(Icons.comment),
                text: 'Comments',
              ),
              Tab(
                child: Image(
                  image: AssetImage('assets/sunset.jpg'),
                ),
              ),
              Tab(
                icon: Icon(Icons.computer),
              ),
              Tab(
                text: "News",
              ),
            ]),
          ),
          body: TabBarView(children: [
            Center(
              child: Text("tab1"),
            ),
            Center(
              child: Text("tab2"),
            ),
            Center(
              child: Text("tab3"),
            ),
            Center(
              child: Text("tab4"),
            )
          ]),
        ),
      ),
    );
  }
}
