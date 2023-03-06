import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    //* Radius Gambar
    var radius = const Radius.circular(20);
    //* Bagian Image
    Widget imageSection = SizedBox(
        width: 500,
        // height: 500,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              bottomLeft: radius,
              bottomRight: radius),
          child: const Image(image: NetworkImage('https://picsum.photos/1000/500')),
        ),);
    
    //* Bagian Title
    Widget titleSection = Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black)
        ),
        child: Row(
          // mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(flex: 2,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                 Text('Oeschinen Lake CampGround',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                 Text('Kandersteg, SwitzerLand'),
              ],
            ),
            const Spacer(flex: 20,),
            const Padding(
              padding:  EdgeInsets.all(8.0),
              child: Icon(Icons.star, color: Colors.amber),
            ),
            // Spacer(flex: 1,),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 8,right: 8),
              child: Text('41'),
            ),
            const Spacer(flex: 2,)
          ],
        ),
      ),
    );

    //* Bagian Tombol
    Widget buttonSection = Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buttonSubSection(Icons.call,'CALL'),
          buttonSubSection(Icons.alt_route , 'ROUTE'),
          buttonSubSection(Icons.share,'SHARE'),
        ],
      ));

    //*Bagian Text 
    Widget textSection = const  Padding(
        padding:  EdgeInsets.all(32.0),
        child: Text(
       'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
          'half-hour walk through pastures and pine forest, leads you to the '
          'lake, which warms to 20 degrees Celsius in the summer. Activities '
          'enjoyed here include rowing, and riding the summer toboggan run.',
        ),
      );
    //!titleSection tidak bisa menggunakan ListTile karena Trailingnya ngga bisa lebih dari 1 widget(ga bisa Row)
    // Widget titleSection = ListTile(
    //   title: const Text('Oeschinen Lake Campground'),
    //   subtitle: const Text("Kandersteg, SwitzerLand"),
    //   trailing: SizedBox(
    //     child: Row(children: [
    //       Icon(Icons.star),
    //       Text('41')
    //     ]),
    //   ),
    // );
    return MaterialApp(
      title: 'App Mantep',
      home: Scaffold(
          body: Column(
        children: [
          Center(child: imageSection),
          const Padding(padding: EdgeInsets.only(bottom: 20,top: 20)),
          titleSection,
          const Padding(padding: EdgeInsets.only(bottom: 20,top: 20)),
          buttonSection,
          // const Padding(padding: EdgeInsets.only(bottom: 20,top: 20)),
          textSection
        ],
      )),
    );
  }

  Column buttonSubSection(IconData iconGambar,String textPesan) {
    return Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(iconGambar),
            Text(textPesan)
          ],
        );
  }
}
