import 'package:flutter/material.dart';

void main() {
  runApp(const SecondPage());
}

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController controller = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Main Page")),
      body: Center(child: 
      ElevatedButton(child: Text("Back to main page"),onPressed: (){
        Navigator.pop(context);
      },)),
    );
    
  }
}
//STL -> Shortcut stateless widget.
