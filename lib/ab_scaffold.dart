import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Center(child: Text('App Bar')),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Image(
          image: NetworkImage(
              "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg"),
        ),
      ),
    ),
  ));
}

//! Why Hot Reload Not Working ?  extends statelessWidget
//! How Flutter Detect Devices and make something different for each devices?
//! trailling commas matters