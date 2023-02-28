import 'package:d_info/d_info.dart';
import 'package:d_method/d_method.dart';
import 'package:flutter/material.dart';
import 'package:d_input/d_input.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map> listData = [];

  create() {
    final controllerTitle = TextEditingController();
    final controllerDescription = TextEditingController();
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: const Text('Create'),
          titlePadding: const EdgeInsets.fromLTRB(16,16,16,4),
          contentPadding: const EdgeInsets.all(16),
          children: [
            DInput(controller: controllerTitle, hint: 'Title'),
            const SizedBox(height: 16,),
            DInput(controller: controllerDescription, hint: 'Description',),
            const SizedBox(height: 16,),
            ElevatedButton(onPressed: (){
                Map item = {
                  'title': controllerTitle.text,
                  'description': controllerDescription.text,
                };

                //add Data | Eksekusi ke API
                listData.add(item);
                //Update UI
                setState((){});
                //Logging
                DMethod.printTitle('Create', listData.toString());
                Navigator.pop(context);
                DInfo.snackBarSuccess(context,"Success Create New Data");
            }, child: const Text('Create New Data'))
          ],
        );
      },
    );
  }

  read() {
    //logging
    DMethod.printTitle('read - begore get data', listData.toString());
    //get data from database/api/collection
    List<Map> initialList = [
      {
        'title' : 'Container',
        'description' :'Neumorphism is a something' 
      },
    ];

    //move data
    // listData.addAll(initialList);
    listData = initialList;
    DMethod.printTitle('read - after get data', listData.toString());
    setState(() {
    });

  }
    @override
    void initState(){
      read();
      super.initState();
    }
  update() {}
  delete() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CRUD With Collection'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => create(),
        child: const Icon(Icons.add),
      ),
      body: listData.isEmpty?
      const Center(child : Text('Empty!!'))
      : ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context,index){
            Map item = listData[index];
            return ListTile(
              title: Text(item['title']),
              subtitle: Text(item['description']),
            );
      },
    ),
    );
  }
}
