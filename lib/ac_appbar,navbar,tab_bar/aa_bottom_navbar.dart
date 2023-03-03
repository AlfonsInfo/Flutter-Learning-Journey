//* Navbar -> Untuk Navigasi Halaman
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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //* Posisi Tab atau selected index
  int _selectedIndex = 0;
  //* Mendeklarasikan Text Style 1 untuk semua
  static const TextStyle optionStyle =
      TextStyle(color: Colors.red, fontWeight: FontWeight.bold);
  //* List dari content tab
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'IndexHome',
      style: optionStyle,
    ),
    Text(
      'indexTab1',
      style: optionStyle,
    ),
    // Text('IndexHome',style: optionStyle,),
  ];

  //* Fungsi : Render New State, ganti selected navbar
  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //*Scaffold
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar'),
      ),
      //*Bodynya
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      //*Bottom Navbar
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Menu 1'),
        BottomNavigationBarItem(icon: Icon(Icons.schedule), label: 'Menu 2'),
      ], currentIndex: _selectedIndex, onTap: (value) => onItemTapped(value)),
    );
  }
}
