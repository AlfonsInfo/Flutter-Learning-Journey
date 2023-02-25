import 'package:flutter/material.dart';
import 'package:flutter_app_1/dasar navigasi page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TabBar myTabBar= TabBar(
      indicator: BoxDecoration(color: Colors.red,border: Border(top: BorderSide(color: Colors.purple),),),
      tabs: <Widget>[
        Tab(icon: Icon(Icons.computer), text: "Computer",),
        Tab(icon: Icon(Icons.comment),text: "comment",),
      ]);

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('ini text'),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
              child: Container(child: myTabBar)),
            ),
          body: TabBarView(children: [
            Center(
              child: Text("tab1"),
            ),
            Center(
              child: Text("tab2"),
            ),
            
          ]),
        ),
      ),
    );
  }
}
