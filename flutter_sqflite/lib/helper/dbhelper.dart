import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_sqflite/models/contact.dart';


class DbHelper{
  //* Kenapa Static?
  static DbHelper _dbHelper;
  static Database? _database;

  DbHelper._createObject();

  //* Factory Keyword?
  factory DbHelper()
  {
    // if(dbHelper??){
      _dbHelper = DbHelper._createObject();
    // }
    return _dbHelper;
  }

  Future<Database> initDb() async{
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'contact';
    var database = openDatabase(path,version: 1,onCreate: _createDb);
    return database;
  }

  void _createDb(Database db, int version) async{
    await db.execute('''
    CREATE TABLE contact(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      nama TEXT,
      telp TEXT
    )
''');
  }

  Future<Database?> get database async{
    if(database == null){
      _database = await initDb();
    }
    return _database;
  }
  
  Future<List<Map<String, dynamic>>> select() async{
    Database? db = await this.database;
    var mapList = await db!.query('contact', orderBy: 'nama');
    return mapList;
  }

  // //* Update
  // Future<int> update(Kontak object) async{
  //   Database db = await this.database;
  //   int count = await db.update('contact',);
  // }


}


// static const DbHelper? _dbHelper = DbHelper._createObject();
//   static Database? _database;

//   //* Membuat objek dari kelas
//   DbHelper._createObject();
  

//   Future<Database> initDb() async{
//     //*Tentukan lokasi dan nama database
//     Directory dir = await getApplicationDocumentsDirectory();
//     String path = '$dir.pathcontact.db';

//     //*Membuat dan Membuka Database
//     var contactDatabase = openDatabase(path,version: 1,onCreate: _createDb);

//     return contactDatabase;
//   }

//   void _createDb(Database db, int version) async{
//     //* Membuat tabel dengan nama contact

//     await db.execute('''
//       CREATE TABLE contact(
//         id INTEGER PRIMARY KEY AUTOINCREMENT,
//         nama TEXT,
//         telp TEXT
//       )
//     ''');
//   }

  // Future<Database> get database async{
  //   if(_database == null)
  //   {
  //     _database = await initDb();
  //   }
  //   return _database!;
  // }

  // //Read
  // Future<List<Map<String, dynamic>>> select() async{
  //   Database db = await database;
  //   var mapList = await db.query('contact',orderBy: 'nama');
  //   return mapList;
  // }

  // //Create
  // Future<int> insert(Kontak objek) async{
  //   Database db = await database;
  //   int count = await db.insert('contact', objek.toMap());
  //   return count;
  // }

  // //Update
  // Future<int> update(Kontak objek) async{
  //   Database db = await this.database;
  //   int count = await db.update('contact', objek.toMap(),where:  "id=?",whereArgs: [objek.id]);
  //   return count;
  // }
  // //Delete
  // Future<int> delete(int id) async{
  //   Database db = await database;
  //   int count = await db.delete('contact',where:  "id=?",whereArgs: [id]);
  //   return count;
  // }

  // Future<List<Kontak>> getContactList() async{
  //   var contactMapList = await select();
  //   int count = contactMapList.length;
  //   List<Kontak> contactList = List<Kontak>.generate(
  //     count,
  //     (index){
  //       return Kontak.fromMap(contactMapList[index]);         
  //     },
  //   );

  //   return contactList;
  // }