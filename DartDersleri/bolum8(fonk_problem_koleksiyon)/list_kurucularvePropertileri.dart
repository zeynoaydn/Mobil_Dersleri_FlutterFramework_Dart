void main(List<String> args) {
  Person zeynep = Person(12, "zeynep");
  Ogrenci mert = Ogrenci(89, "mert", 32);
  Person nezaket = Person(45, "nezaket");
  var ali = Person(78, "ali");
  var can = Ogrenci(67, "can", 56);

  //tüm person nesnesini ortak bir listeye aldık
  List<Person> tumOgrenciler = [zeynep, mert, nezaket, ali, can];

  //listem Ogrenci leri tutuyor 5elemanlı liste olacak
  var liste1 = List<Ogrenci>.filled(5, Ogrenci(0, "", 0));
  var listeFrom = List<Person>.from(tumOgrenciler);

  //tumOgrenciler i gez type ı Ogrenci olanlarla liste oluştur demek
  var listeOf = List<Ogrenci>.of(tumOgrenciler.whereType<Ogrenci>());

  var listGenerate = List<int>.generate(5, (index) => index + 2);
  print(liste1);
  print(listeFrom);
  print(listeOf);
  print(listGenerate);
}

class Person {
  int id = 0;
  String isim = "";

  Person(this.id, this.isim);

  @override
  String toString() {
    return "id:$id ve isim:$isim";
  }
}

class Ogrenci extends Person {
  int alinanDersSayisi = 0;
  Ogrenci(id, isim, this.alinanDersSayisi) : super(id, isim);

  @override
  String toString() {
    return "id:$id ve isim:$isim ve alıanan ders sayısı:$alinanDersSayisi";
  }
}
