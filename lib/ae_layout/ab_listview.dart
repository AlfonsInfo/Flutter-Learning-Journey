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
  List<Container> _buildGridTileList(int count) => List.generate(count
  , (i) => Container(child:Image.network("https://picsum.photos/200")));
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          _tile('CineArts at the Empire', '75 W Portal Ave', Icons.theaters),
          _tile('The Castro Theater', '429 Castro ST', Icons.theaters),
          _tile('United Artist', '501 Bungkingham', Icons.theaters),
          _tile(
          'Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
      _tile('La Ciccia', '291 30th St', Icons.restaurant),  
        ],
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

  ListTile _tile(title,alamat,icon)
  {
    return ListTile(
      title: Text(title),
      subtitle: Text(alamat),
      leading: Icon(icon,color: Colors.blue,),
      trailing: IconButton(
        onPressed: (){
          print('clicking');
        },
        icon: Icon(Icons.menu,
        color: Colors.blue,)),
    );
  }
}