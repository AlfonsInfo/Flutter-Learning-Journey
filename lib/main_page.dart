import 'package:flutter/material.dart';
import 'package:flutter_app_1/second_page.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController controller = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Main Page")),
      body: Center(child: 
      ElevatedButton(child: Text("Go to Second Page"),onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return SecondPage();
        }));
      },)),
    );
    
  }
}
//STL -> Shortcut stateless widget.
