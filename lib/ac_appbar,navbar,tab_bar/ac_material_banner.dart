//* app_bar -> tidak untuk navigasi
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
  //* Scaffold Key
  // final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  //* Default Show / Hidden FAB(Floating Action Button) dan Notchnya
  bool _showNotch = true;
  bool _showFab = true;
  //* Posisi Default dari Floating Button
  FloatingActionButtonLocation _fabLoc = FloatingActionButtonLocation.endDocked;

  //* Fungsi Deteksi Perubahan Notch (Show / Hidden)
  void _onShowNotchChanged(value) {
    setState(() {
      _showNotch = value;
    });
  }

  //* Fungsi Deteksi Perubahan Fab (Show /Hidden)
  void _onShowFabChanged(value) {
    setState(() {
      _showFab = value;
    });
  }

  //* Deteksi perubahan posisi Fab
  void _onFabLocationChange(FloatingActionButtonLocation? value) {
    setState(() {
      _fabLoc = value ?? FloatingActionButtonLocation.endDocked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('BottomNavigationBar'),
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 88),
        children: [
          SwitchListTile(
              value: _showFab,
              onChanged: (_) => _onShowFabChanged(_),
              title: const Text('Floating Action Button')),
          SwitchListTile(
            value: _showNotch,
            onChanged: (_) => _onShowNotchChanged(_),
            title: const Text('Notch'),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text('Posisi Floating Button'),
          ),
          RadioListTile(
            title: const Text('Docked - End'),
            value: FloatingActionButtonLocation.endDocked,
            groupValue: _fabLoc,
            //* valuenya di onChange() ini nullable oleh karena itu di fungsi onFabLocChange juga nullable dan perlu dilakukan null check
            onChanged: (_) => _onFabLocationChange(_),
          ),
          RadioListTile(
            title: const Text('Docked - Center'),
            value: FloatingActionButtonLocation.centerDocked,
            groupValue: _fabLoc,
            onChanged: (_) => _onFabLocationChange(_),
          ),
          RadioListTile(
            title: const Text('Floating - End'),
            value: FloatingActionButtonLocation.endFloat,
            groupValue: _fabLoc,
            onChanged: (_) => _onFabLocationChange(_),
          ),
          RadioListTile(
            title: const Text('Floating - Start'),
            value: FloatingActionButtonLocation.startFloat,
            groupValue: _fabLoc,
            onChanged: (_) => _onFabLocationChange(_),
          ),
        ],
      ),
      floatingActionButton: _showFab
          ? FloatingActionButton(
              onPressed: () {},
              tooltip: 'Create', //* kalo di hover tampil tulisan
              child: const Icon(Icons.add),
            )
          : null,
      //* Lokasi dari floating action button
      floatingActionButtonLocation: _fabLoc,
      //* bottom navbar : bottomAppBar
      bottomNavigationBar: _BottomApp(
        shape: _showNotch ? const CircularNotchedRectangle() : null,
        fabLocation: _fabLoc,
      ),
    );
  }
}

class _BottomApp extends StatelessWidget {
  final FloatingActionButtonLocation fabLocation;
  final NotchedShape? shape;
  
  const _BottomApp({
    this.fabLocation = FloatingActionButtonLocation.endDocked,
    this.shape = const CircularNotchedRectangle(),
  });


  static final List<FloatingActionButtonLocation> centerLocations =
      <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: shape,
      color: Colors.blue,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          children: <Widget>[
            IconButton(
              tooltip: 'Open navigation menu',
              icon: const Icon(Icons.menu),
              onPressed: () => tampilModal(context),
            ),
            if (centerLocations.contains(fabLocation)) const Spacer(), //* Bagian yang bikin iconnya pindah
            IconButton(
                tooltip: 'Search',
                icon: const Icon(Icons.search),
                onPressed: () => tampilSnack(context)
                ),
            IconButton(
              tooltip: 'Favorite',
              icon: const Icon(Icons.favorite),
              onPressed: () => tampilBanner(context)                
            ),
          ],
        ),
      ),
    );
  }

  void tampilSnack(BuildContext context) {
    const snackBar = SnackBar(content: const Text('Yay! A SnackBar!'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void tampilBanner(BuildContext context) {
    MaterialBanner banner = MaterialBanner(
      content: Title(color: Colors.red, child: Text('Data'),),
      actions: <Widget>[
          TextButton(
            onPressed: null,
            child: Text('OPEN'),
          ),
          TextButton(
            onPressed: null,
            child: Text('DISMISS'),
          ),
        ],);
        ScaffoldMessenger.of(context).showMaterialBanner(banner);
  }

  SnackBar snackSearch() {
    return const SnackBar(
      content: Text('Search Opo kowe ?'),
    );
  }

  Future<dynamic> tampilModal(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) => const AlertDialog(
        title: Text('Alert Dialog'),
        content: Text('Alert Description'),
      ),
    );
  }
}
