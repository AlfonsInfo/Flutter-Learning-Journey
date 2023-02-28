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
  bool ascending = true;
  //* CREATE
  create() {
    final controllerTitle = TextEditingController();
    final controllerDescription = TextEditingController();
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: const Text('Create'),
          titlePadding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
          contentPadding: const EdgeInsets.all(16),
          children: [
            DInput(controller: controllerTitle, hint: 'Title'),
            const SizedBox(
              height: 16,
            ),
            DInput(
              controller: controllerDescription,
              hint: 'Description',
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  Map item = {
                    'id':UniqueKey().toString(),
                    'title': controllerTitle.text,
                    'description': controllerDescription.text,
                  };

                  //add Data | Eksekusi ke API
                  listData.add(item);
                  //Update UI
                  setState(() {});
                  //Logging
                  DMethod.printTitle('Create', listData.toString());
                  Navigator.pop(context);
                  DInfo.snackBarSuccess(context, "Success Create New Data");
                },
                child: const Text('Create New Data'))
          ],
        );
      },
    );
  }

  //* READ
  read() {
    //logging
    DMethod.printTitle('read - begore get data', listData.toString());
    //get data from database/api/collection
    List<Map> initialList = [
      {
        'id': '001',
        'title': 'Container',
        'description': 'Neumorphism is a something'
      },
    ];

    //move data
    // listData.addAll(initialList);
    listData = initialList;
    DMethod.printTitle('read - after get data', listData.toString());
    setState(() {});
  }

  @override
  void initState() {
    read();
    super.initState();
  }

  //* UPDATE
  update(Map oldData, int index) {
    final controllerTitle = TextEditingController(text: oldData['title']);
    final controllerDescription = TextEditingController(text: oldData['description']);
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: const Text('Update'),
          titlePadding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
          contentPadding: const EdgeInsets.all(16),
          children: [
            DInput(controller: controllerTitle, hint: 'Title'),
            const SizedBox(
              height: 16,
            ),
            DInput(
              controller: controllerDescription,
              hint: 'Description',
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  Map newItem = {
                    'id' : oldData['id'],
                    'title': controllerTitle.text,
                    'description': controllerDescription.text,
                  };

                  //add Data | Eksekusi ke API
                  listData[index] = newItem;
                  //Update UI
                  setState(() {});
                  //Logging
                  DMethod.printTitle('Create', listData.toString());
                  Navigator.pop(context);
                  DInfo.snackBarSuccess(context, "Success Update Data");
                },
                child: const Text('Update Data'))
          ],
        );
      },
    );
  }

  //*DELETE
  delete(int index) {
    //Logging Before Delete
    //delete from list
    listData.removeAt(index);
    //trigger ui
    setState(() {});
    //Logging After Delete
  }

  deleteById(String id) {
    //Logging Before Delete
    //delete from list
    listData.removeWhere((element) => element['id'] == id);
    //trigger ui
    setState(() {});
    //Logging After Delete
  }

  sort(){
    ascending = !ascending;
    if(ascending){
      listData.sort((a, b) => a['title'].compareTo(b['title']) ,);
    }else{
      listData.sort((a, b) => b['title'].compareTo(a  ['title']) ,);
    }
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const  Size.fromHeight(80.0),
        child: AppBar(
          title: const Text('CRUD With Collection'),
          actions: [
            Row(
              children: [
                IconButton(onPressed: () => sort(), 
                iconSize: 20,
                icon: const Icon(Icons.sort_by_alpha_outlined),
                tooltip: ascending? 'Ascending':'Descending',),
                Icon(
                  ascending? Icons.arrow_downward : Icons.arrow_upward,
                  size: 20,
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => create(),
        child: const Icon(Icons.add),
      ),
      body: listData.isEmpty
          ? const Center(child: Text('Empty!!'))
          : ListView.builder(
              itemCount: listData.length,
              itemBuilder: (context, index) {
                Map item = listData[index];
                return ListTile(
                  title: Text(item['title']),
                  subtitle: Text(item['description']),
                  trailing: PopupMenuButton(
                      onSelected: (value) {
                        if (value == 'update') {
                          update(item , index);
                        }
                        if (value == 'delete') {
                          deleteById(item['id']);
                        }
                      },
                      itemBuilder: (context) => [
                            const PopupMenuItem(
                              value: 'update',
                              child: Text('Update'),
                            ),
                            const PopupMenuItem(
                              value: 'delete',
                              child: Text('Delete'),
                            ),
                          ]),
                );
              },
            ),
    );
  }
}
