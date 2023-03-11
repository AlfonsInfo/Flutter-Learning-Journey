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

  //* Menampung data untuk tampil
  List<Map> listData = [];
  
  //* Untuk Sorting Data
  bool ascending = true;
  
  //* Controller untuk search
  final controllerSearch = TextEditingController();

  //* Fitur Filter
  String selectedCategory = 'All';
  List categories = [
    'All',
    'Front End',
    'Back End',
    'Design',
    'API',
  ];

  //* Data awal 
  List<Map> initialList = [
      {
        'id': '001',
        'title': 'Container',
        'category' : 'Front End', 
        'description': 'Neumorphism is a something'
      },
      {
        'id': '002',
        'title': 'Neumorphism',
        'category' : 'Design', 
        'description': '3d shape use optic view'
      },
    ];
  //* CREATE
  create() {
    //* Controller untuk title dan description
    final controllerTitle = TextEditingController();
    final controllerDescription = TextEditingController();
    //* Membuat dialog
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
    //move data
    // listData.addAll(initialList);
    listData = initialList;
    DMethod.printTitle('read - after get data', listData.toString());
    setState(() {});
  }

  //* Turunan dari Stateful Widget
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

  //*SEARCH
  search(){
    //reset list -> if not use API or Database
    // if()
    listData = initialList;
    //logging
    DMethod.printTitle('search - before ',listData.toString());
    //search or implement search API
    // listData = listData.where((element) => (element['title'] as String).contains(controllerSearch.text.toLowerCase())).toList();
      listData = listData.where((element){
        String title = element['title'].toLowerCase();
        String query = controllerSearch.text.toLowerCase();
        return title.contains(query);
      } ,).toList();
    //logging

    //Trigger UI 
    setState(() {});
  }

  filterCategory(String category)
  {
    listData = initialList;
    selectedCategory = category;
    //set filter
  DMethod.printTitle('filter hasil',listData.toString());
  setState(() {
    if(category != 'All')
    {
    listData = listData.where((element)=> element['category'] == category).toList();
    }
  });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        //* tittle
        title: const Text('CRUD With Collection'),
        //*textfield search
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child:  Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 8/10   ,
                // width: double.infinity,
                height: 50-8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5)
                ),
                margin: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                padding: const EdgeInsets.only(left: 16,top: 8),
                child: TextField(
                  controller: controllerSearch,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'type search...',
                    isDense: true,
                    suffixIcon: IconButton(onPressed: ()=>search(), icon: const Icon(Icons.search))
                  ),
                ),
              ),
              MenuFilter()
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: () => sort(), 
          iconSize: 20,
          icon: const Icon(Icons.sort_by_alpha_outlined),
          tooltip: ascending? 'Ascending':'Descending',),
          Icon(
            ascending? Icons.arrow_downward : Icons.arrow_upward,
            size: 20,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => create(),
        child: const Icon(Icons.add),
      ),
      body: listData.isEmpty
          ? Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children:  [
                const Text('Empty!!'),
                IconButton(onPressed: () => read(), icon: const Icon(Icons.refresh)),
              ],
            ),
          )
          : RefreshIndicator(
            onRefresh: () async {
              read();
              selectedCategory = 'All';},
            child: ListView.builder(
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
          ),
    );
  }

  PopupMenuButton<String> MenuFilter() {
    return PopupMenuButton<String>(
              padding: const EdgeInsets.fromLTRB(0, 0, 8,8),
              icon: const Icon(Icons.tune,color: Colors.white,),
              onSelected: (value)=> filterCategory(value),
              itemBuilder: (context) => List.generate(
                categories.length,
                (index){
                  String itemCategory = categories[index];
                  return PopupMenuItem(
                    value: itemCategory,
                    child: Row(
                      children: [
                        Text(itemCategory),
                        if(itemCategory == selectedCategory)
                        const Icon(Icons.check, color: Colors.blue,)
                      ],));
                }
              )
              );
  }
}
