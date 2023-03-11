import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: 'buat_Form', 
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.indigo
        ),
        home: const Home(),
    );
  }
}


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                MaterialPageRoute routeFirstPage = MaterialPageRoute(builder: (BuildContext context) => const FirstPage());
                Navigator.pop(context);
                Navigator.push(context, routeFirstPage);
              } 
            ,child: const Text('Pindah Ke Page 1')),
            // ElevatedButton(onPressed: onPressed, child: child)
        ]),
      ),
    );
  }
}



//* First Page

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                MaterialPageRoute routeHome = MaterialPageRoute(builder: (BuildContext context) => const MainApp());
                Navigator.push(context, routeHome);
              } 
            ,child: const Text('Kembali Ke Home')),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushReplacement(context, newRoute) Push dan Gantikan
                Navigator.pop(context);
                MaterialPageRoute routePage2 = MaterialPageRoute(builder: (BuildContext context) => const SecondPage());
                Navigator.push(context, routePage2);
              } 
            ,child: const Text('Pindah Ke Page 2')),
        ]),
      ),
    );
  }
}


class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              } 
            ,child: const Text('POP')),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                MaterialPageRoute routeHome = MaterialPageRoute(builder: (BuildContext context) => const MainApp());
                Navigator.push(context, routeHome);
              } 
            ,child: const Text('Pindah Ke Page 1')),
        ]),
      ),
    );
  }
}