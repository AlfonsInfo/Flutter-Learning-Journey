import 'mahasiswa.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class MySqflite {
  //* Nama Database, Versionnya, Nama Tabelnya
  static const _databaseName = "MyDatabase.db";
  static const _databaseV1 = 1;
  static const tableMahasiswa = 'mahasiswa';

  //* Column Datanya
  static const columnNim = 'nim';
  static const columnName = 'name';
  static const columnDepartment = 'department';
  static const columnSKS = 'sks';

  // make this a singleton class
  MySqflite._privateConstructor();

  static final MySqflite instance = MySqflite._privateConstructor();

  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
}

  _initDatabase() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, _databaseName);

    return await openDatabase(path, version: _databaseV1,
        onCreate: (db, version) async {
      var batch = db.batch();
      _onCreateTableMahasiswa(batch);

      await batch.commit();
    });
  }

  void _onCreateTableMahasiswa(Batch batch) async {
    batch.execute('''
          CREATE TABLE $tableMahasiswa (
            $columnNim TEXT PRIMARY KEY,
            $columnName TEXT,
            $columnDepartment TEXT,
            $columnSKS INTEGER
          )
          ''');
  }

  ///TABLE MAHASISWA
  Future<int> insertMahasiswa(MahasiswaModel model) async {
    var row = {
      columnNim: model.nim,
      columnName: model.name,
      columnDepartment: model.department,
      columnSKS: model.sks
    };

    Database? db = await instance.database;
    return await db!.insert(tableMahasiswa, row);
  }

  Future<List<MahasiswaModel>> getMahasiswa() async {
    Database? db = await instance.database;
    var allData = await db!.rawQuery("SELECT * FROM $tableMahasiswa");

    List<MahasiswaModel> result = [];
    for (var data in allData) {
      result.add(MahasiswaModel(
          nim: (data[columnNim]).toString(),
          name: (data[columnName]).toString(),
          department: (data[columnDepartment]).toString(),
          sks: int.parse(data[columnSKS].toString())));
    }

    return result;
  }

  Future<MahasiswaModel?> getMahasiswaByNIM(String nim) async {
    Database? db = await instance.database;
    var allData = await db!.rawQuery(
        "SELECT * FROM $tableMahasiswa WHERE $columnNim = $nim LIMIT 1");

    if (allData.isNotEmpty) {
      return MahasiswaModel(
          nim: (allData[0][columnNim]).toString(),
          name: (allData[0][columnName]).toString(),
          department: (allData[0][columnDepartment]).toString(),
          sks: int.parse((allData[0][columnSKS].toString())));
    } else {
      return null;
    }
  }

  Future<int> updateMahasiswaDepartment(MahasiswaModel model) async {
    Database? db = await instance.database;
    return await db!.rawUpdate(
        'UPDATE $tableMahasiswa SET $columnDepartment = ${model.department} '
        'Where $columnNim = ${model.nim}');
  }

  Future<int> deleteMahasiswa(String nim) async {
    Database? db = await instance.database;
  return await db!.rawDelete('DELETE FROM $tableMahasiswa Where $columnNim = $nim');
  }

  clearAllData() async {
    Database? db = await instance.database;
    await db!.rawQuery("DELETE FROM $tableMahasiswa");
  }
}