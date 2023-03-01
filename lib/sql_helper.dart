import 'package:sqflite/sqflite.dart' as sql;
import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
// import 'package:debug_logger/debug_logger.dart';

class SQLHelper{
  //*Creating database
  static Future<void> createTables(sql.Database database) async{
    await database.execute
    ('''CREATE TABLE items (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        title Text,
        description Text
        )
''');
  }
  //*
  static Future<sql.Database> db() async{
        var databasesPath = await sql.getDatabasesPath();
    String path = join(databasesPath, 'data.db');
    return sql.openDatabase(
      path,
      version: 1,
      onCreate: (sql.Database database, int version) async{
          //* Jalanin Fungsi diatasnya
          print('...creating a table');
          await createTables(database);
      }
    );
  }

  static Future<int> createItem(String title, String? description)
  async {
    //* Manggil fungsi dari kelas  SQLHelper
    final db = await SQLHelper.db();
    final data = {'title': title, 'description' : description};
    //* insert data to table ( yang diinsert harus berbentuk map) , conflictAlgorithm -> mengatasi duplikat entry
    final id = await db.insert('items', data, conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  //* Launch App : Get All Data
  //* Return List of Map
  static Future<List<Map<String,dynamic>>> getItems()async{
    //* Database Connection
    final db = await SQLHelper.db();
    //* to get an item
    return db.query('items', orderBy: 'id');
  }

  static Future<List<Map<String,dynamic>>> getItem(int id)async{
    final db = await SQLHelper.db();
    return db.query('items', where: 'id = ?', whereArgs: [id], limit: 1);
  }

  static Future<int> updateItem(
    int id,String title, String? description
  ) async{
    final db = await SQLHelper.db();
    
    final data = {
      'title' : title,
      'description' : description,
    };
    final result = await db.update('items', data, where: "id = ?", whereArgs: [id]);
    return result;
  }

  static Future<void> deleteItem(int id) async{
    final db = await SQLHelper.db();
    try{
      await db.delete("items", where: "id = ?", whereArgs: [id]);
    }catch (err)
    {
      debugPrint('Somethign Went Wrong Deleting an item');
      // debugPrint('');
    }
  }
}