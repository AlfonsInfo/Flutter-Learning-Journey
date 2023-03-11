import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPageState extends StatefulWidget {
  const LoginPageState({super.key});

  @override
  State<LoginPageState> createState() => _LoginPageStateState();
}

class _LoginPageStateState extends State<LoginPageState> {
  late TextEditingController _controllerUsername;
  late TextEditingController _controllerPassword;

  //* flutter ada juga lifecycle state aplikasinya
  @override
  void initState() {
    _controllerUsername = TextEditingController();
    _controllerPassword = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return showLoginPage([_controllerUsername, _controllerPassword], context);
  }
}

Scaffold showLoginPage(
    List<TextEditingController> controller, BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.blueGrey[900],
    appBar: AppBar(
      title: Center(child: Text('Gofit')),
      backgroundColor: Colors.red[900],
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //Todo ganti image
          Center(
            child: Icon(Icons.sports_gymnastics_rounded, size: 200),
          ),
          inputField(
              'Username', false, true, Icon(Icons.person), controller[0]),
          inputField(
              'Password', true, false, Icon(Icons.key_off), controller[1]),
          SizedBox(
            width: 350,
            // width: double.infinity,
            child: ElevatedButton(
              onPressed: () => {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return HomePage();
                }))
              },
              child: Text('Login'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.redAccent,
              ),
            ),
          )
        ],
      ),
    ),
  );
}

//! Controllernya sama, malah ubah textfield 1 textfield 2 ikut berubah
//! Tidak bekerja, dia harus return widgetnya, sedangkan ini tidak bisa
// Padding assemblyWidget(List <Widget>Params) {
//   return Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: inputField('Username',false,true),
//         );
// }

Padding inputField(String hintText, bool statusHidden, bool autofocus,
    Icon iconField, TextEditingController txtController) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      controller: txtController,
      autofocus: autofocus,
      obscureText: statusHidden,
      onChanged: (value) {
        setState() {}
        ;
      },
      style: TextStyle(color: Colors.blue),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        // labelText: hintText,
        // focusColor: Colors.red,
        icon: iconField,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
    ),
  );
}
