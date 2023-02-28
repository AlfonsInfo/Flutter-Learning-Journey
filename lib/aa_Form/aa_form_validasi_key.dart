import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: 'buat_Form',
        theme: ThemeData(
          primarySwatch: Colors.red
        ),
        home: const Home(),
    );
  }
}


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>(); //!key ini untuk apa? fungsinya mirip dengan Of(context)
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>(); //!key ini untuk apa?
  //! formKey adalah suatu kelas GlobalKey yang diasosiasikan dengan FormState
  //! identifier mendapatkan validasi yang benar

  functionValidate(value,message){
    if(value!.isEmpty)
    {
      return message;
    }
  }

  ValidasiInput()
  {
    FormState form = formKey.currentState!;
    // ScaffoldState scaffold = scaffoldKey.currentState!;
    SnackBar message = SnackBar(content: const Text('Proses Validasi berhasil!'),
    );
    if(form.validate())
    {
      ScaffoldMessenger.of(context).showSnackBar(message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Membuat Form')
      ),
    body: Container(
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Nama',
              ),
              keyboardType: TextInputType.text,
              validator: (String? value)  =>  functionValidate(value, 'Nama tidak boleh kosong')
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'No. HP',
              ),
              keyboardType: TextInputType.number,
              validator: (String? value)  =>  functionValidate(value, 'No Hp tidak boleh kosong')

            ),
            
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (String? value)  =>  functionValidate(value, 'Email tidak boleh kosong')

            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Tanggal Lahir',
              ),
              keyboardType: TextInputType.datetime,
              validator: (String? value)  =>  functionValidate(value, 'Tanggal Lahir tidak boleh kosong')
            ),
            Container(height: 10.0,),
            ElevatedButton(
              onPressed: ValidasiInput, 
              child: const Text('VALIDASI DATA'))
          ],
        )),
    ),
    );
  }
}
