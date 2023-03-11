class Kontak{
  int id = 0;
  String nama = '';
  String telp = '';
  

  //*Konstruktor Normal
  Kontak(this.id,this.nama,this.telp);

  //*Konstruktor yang membuat data dari Map
  Kontak.fromMap(Map<String,dynamic> map)
  {
    id = map['id'];
    nama = map['nama'];
    telp = map['telp'];
  }


  //* Konversi Kontak ke Map
  Map<String, dynamic> toMap()
  {
    Map<String,dynamic> map = Map();
    map['id'] = id;
    map['nama'] = nama;
    map['telp'] = telp;
    return map;
  }


}