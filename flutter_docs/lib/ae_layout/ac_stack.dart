import 'package:flutter/material.dart';
// import 'printd'

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
  List<Container> _buildGridTileList(int count) => List.generate(count,
      (i) => Container(child: Image.network("https://picsum.photos/200")));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Stack(
          alignment: const Alignment(0.0, 0.0), //* Mengatur posisi didalam stack
          children: <Widget>[
            const CircleAvatar(
              backgroundImage: NetworkImage('https://picsum.photos/200/300'),
              radius: 150,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.black45,
              ),
              child: const Text(
                'Mia B',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  GridView makeGridView() {
    return GridView.extent(
        maxCrossAxisExtent: 200,
        padding: const EdgeInsets.all(4),
        crossAxisSpacing: 4,
        children: _buildGridTileList(14));
  }

  ListTile _tile(title, alamat, icon) {
    return ListTile(
      title: Text(title),
      subtitle: Text(alamat),
      leading: Icon(
        icon,
        color: Colors.blue,
      ),
      trailing: IconButton(
          onPressed: () {
            print('clicking');
          },
          icon: const Icon(
            Icons.menu,
            color: Colors.blue,
          )),
    );
  }
}
