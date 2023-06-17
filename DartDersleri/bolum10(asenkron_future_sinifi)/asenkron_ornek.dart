import 'dart:async';
import 'dart:io';

void main(List<String> args) {
  print("anne çocuğu ekmek almaya yollar");

  uzunSurenIslem().then((value) => print(value)).catchError((hata) {
    print(hata);
  }).whenComplete(() => print("ekmek operasyonu tamamdır"));

  print("peynir zeytin hazırlanır");
  print("kahvaltı hazır");
}

Future<String> uzunSurenIslem() {
  return Future<String>.delayed(Duration(seconds: 2), () {
    // return "çocuk eve ekmekle gelir";
    throw Exception("bakkalda ekmek kalmamış");
  });
}
