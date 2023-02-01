import 'package:flutter/material.dart';
import 'package:flutter_app_1/main_page.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controller = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Center(child: 
      ElevatedButton(child: Text("Login"),onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return MainPage();}));
      },)),
    );
    
  }
}
//STL -> Shortcut stateless widget.
