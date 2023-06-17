void main(List<String> args) {
  Person zeynep = Person(12, "zeynep");
  Ogrenci mert = Ogrenci(1, "mert", 32);
  Person nezaket = Person(45, "nezaket");
  var ali = Person(78, "ali");
  var can = Ogrenci(67, "can", 56);
  List<Person> tumOgrenciler = [zeynep, mert, nezaket, ali, can];
  tumOgrenciler.add(nezaket);
  tumOgrenciler.addAll([zeynep, mert]);
  print(tumOgrenciler);

  print("*********");

  bool sonuc = tumOgrenciler.any((Person element) => element.id > 10);
  print(sonuc);

  print("*********");

  Map<int, Person> yeniMap = tumOgrenciler.asMap();
  print(yeniMap);
  print(yeniMap[0]);
  print(yeniMap[0]!.isim);

  print("*********");

  bool sonucEvery = tumOgrenciler.every((element) => element.isim.length > 0);
  print(sonucEvery);

  print("*********");

  //id sı 1 olan İLK ELEMANI yazdırıyoruz
  var bulunan = tumOgrenciler.firstWhere((element) => element.id == 1);
  print(bulunan);

  print("*********");

  var mapIterabel = tumOgrenciler.map((Person e) => "${e.isim}");
  print(mapIterabel);

  print("*********");

  var mapList = tumOgrenciler.map((Person e) => "${e.isim}").toList();
  print(mapList);

  print("*********");

  var mapList2 = tumOgrenciler.map((Person e) => "${e.isim}").toList();
  print(mapList2[1]);

  print("*********");

  tumOgrenciler.sort((ogr1,ogr2){
    if(ogr1.id<ogr2.id){
      return -1;
    }
    else if(ogr1.id>ogr2.id){
      return 1;
    }
    else{
      return 0;
    }
  });
  print(tumOgrenciler);
}

class Person {
  int id = 0;
  String isim = "";

  Person(this.id, this.isim);

  @override
  String toString() {
    return "id:$id ve isim:$isim\n";
  }
}

class Ogrenci extends Person {
  int alinanDersSayisi = 0;
  Ogrenci(id, isim, this.alinanDersSayisi) : super(id, isim);

  @override
  String toString() {
    return "id:$id ve isim:$isim ve alıanan ders sayısı:$alinanDersSayisi\n";
  }
}
