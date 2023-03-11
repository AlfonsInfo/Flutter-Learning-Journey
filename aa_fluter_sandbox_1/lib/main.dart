import 'package:flutter/material.dart';
import 'src/people.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "A SANDBOX APPS",
        theme: ThemeData(
            primarySwatch: Colors.red,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ADAPTIVE LAYOUTS"),
      ),
      //Rebuild layout anytimes
      body: LayoutBuilder(
        builder: (context, constraints) {
          //400 device independent pixel
        if(constraints.maxWidth > 400)
        {
          return const WideLayout();
        }else{
          return const NarrowLayout();
        }
        }
      ),
    );
  }
}


//change from stateless to stateful wdiget you need to hot restart
class WideLayout extends StatefulWidget {
  const WideLayout({super.key});

  @override
  State<WideLayout> createState() => _WideLayoutState();
}

class _WideLayoutState extends State<WideLayout> {
  Person? _person;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: PeopleList(
          onPersonTap: (person) =>setState(() 
          {
         _person = person;
        }),),
         flex: 2,),
        Expanded(child: _person == null ? Placeholder() : PersonDetail(_person!), flex: 3),
      ],
    );
  }
}
class NarrowLayout extends StatelessWidget {
  const NarrowLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return PeopleList(onPersonTap: (person) => Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => Scaffold(
        appBar: AppBar(),
        body : PersonDetail(person),
      ),)
    ));
  }
}

class PeopleList extends StatelessWidget {
  final void Function(Person) onPersonTap;
  const PeopleList({super.key, required this.onPersonTap});

  @override
  Widget build(BuildContext context) {
    return  ListView(
            children: [
              //kok kalo pake { } error ?
              for (var person in people)
                  ListTile(
                    leading: Image.network(person.picture),
                    title: Text(person.name),
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => Scaffold(body:PersonDetail(person),),),),
                  ),
            ]
          );
  }
}

class PersonDetail extends StatelessWidget {
  final Person person;
  const PersonDetail(this.person, {super.key}); // masalah penyusunan

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(person.name),
          Text(person.phone)
        ],
    
      ),
    );
  }
}