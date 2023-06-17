import 'dart:io';

void main(List<String> args) {
  print("anne çocuğu ekmek almaya yollar");

  Future<String> sonuc = uzunSurenIslem();

  //then=sonucum hazır olduğunda burasını tetikle
  sonuc.then((String value) => print(value)).catchError((hata) {
    print(hata);
  }).whenComplete(() {
    print("ekmek operasyonu tamamdır");
  });
  //whencompleted hata olsada olmasada çalışır(finally)

  print("peynir zeytin hazırlanır");
  print("kahvaltı hazır");
}

Future<String> uzunSurenIslem() {
  Future<String> sonuc = Future.delayed(Duration(seconds: 2), () {
    return "çocuk eve ekmekle gelir";
    throw Exception("bakkalda ekmek kalmamış");
  });
  return sonuc;
}
