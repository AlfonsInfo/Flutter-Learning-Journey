import 'package:flutter/material.dart';
// import 'package:flutter_app_1/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: LoginPage(),
      // home: opacityCardTutor(),
      // home: InkWellTutor(),
      // home: MediaQueryPage(),
    );
  }
}
//STL -> Shortcut stateless widget.

// Part 23 ->Opacity, Custom Card with pattern
class opacityCardTutor extends StatelessWidget {
  const opacityCardTutor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Random Daily Card",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF8C062F),
      ),
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.redAccent, Color(0xFFF5605D)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
        ),
        Center(
          child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                elevation: 10,
                child: Stack(children: <Widget>[
                  Opacity(
                    opacity: 0.7,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://www.toptal.com/designers/subtlepatterns/uploads/white_wall_hash.png"),
                              fit: BoxFit.cover)),
                      // decoration: BoxDecoration( image: DecorationImage(image: NetworkImage("https://imgv3.fotor.com/images/blog-cover-image/part-blurry-image.jpg"),fit: BoxFit.cover)),
                    ),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4),
                          topRight: Radius.circular(4),
                        ),
                        image: DecorationImage(
                            image: AssetImage("assets/sunset.jpg"),
                            fit: BoxFit.cover),
                      )),
                  Container(
                    margin: EdgeInsets.fromLTRB(20,
                        50 + MediaQuery.of(context).size.height * 0.35, 20, 20),
                    child: Center(
                      child: Column(children: [
                        Text(
                          "Beautiful Sunset at Paddy Field",
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: Color(0xFFF56D5D), fontSize: 25),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Posted on ",
                                maxLines: 2,
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                              Text(
                                "Feb 1, 2023",
                                maxLines: 2,
                                style: TextStyle(
                                    color: Color(0xFFF56D5D), fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Spacer(
                              flex: 10,
                            ),
                            // Icon
                            Icon(Icons.thumb_up, size: 18, color: Colors.grey),
                            Spacer(
                              flex: 1,
                            ),
                            // Text
                            Text(
                              "88",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Spacer(
                              flex: 5,
                            ),
                            // Icon
                            Icon(Icons.comment, size: 18, color: Colors.grey),
                            Spacer(
                              flex: 1,
                            ),
                            // Text
                            Text(
                              "10292",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Spacer(
                              flex: 10,
                            )
                          ],
                        )
                      ]),
                    ),
                  ),
                ]),
              )),
        )
      ]),
    );
  }
}

// Part 22
class InkWellTutor extends StatelessWidget {
  const InkWellTutor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Membuat Button"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                child: Text("Elevated Button"),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
              ),
              customButton(),
            ]),
      ),
    );
  }

  Material customButton() {
    return Material(
      borderRadius: BorderRadius.circular(20),
      elevation: 2,
      child: Container(
        width: 150,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                colors: [Colors.purple, Colors.pink],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Material(
          // kelih
          borderRadius: BorderRadius.circular(20),
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.deepPurpleAccent,
            onTap: () {},
            borderRadius: BorderRadius.circular(20),
            child: Center(
                child: Text(
              "My Button",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            )),
          ),
        ),
      ),
    );
  }
}
// Part 22

//Part 21 Media Query
class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Latihan Media Query")),
      body: Column(
        children: [
          (MediaQuery.of(context).orientation == Orientation.portrait)
              ? Row(
                  children: generateContainer(context),
                )
              : Column(
                  children: generateContainer(context),
                )
        ],
      ),
    );
  }

  List<Widget> generateContainer(BuildContext context) {
    return <Widget>[
      Container(
        width: 100, //MediaQuery.of(context).size.width / 3,
        height: 100, //MediaQuery.of(context).size.width / 2,
        color: Colors.red,
      ),
      Container(
        width: 100, //MediaQuery.of(context).size.width / 3,
        height: 100, //MediaQuery.of(context).size.width / 2,
        color: Colors.blue,
      ),
      Container(
        width: 100, //MediaQuery.of(context).size.width / 3,
        height: 100, //MediaQuery.of(context).size.width / 2,
        color: Colors.amber,
      ),
    ];
  }
}

/**/