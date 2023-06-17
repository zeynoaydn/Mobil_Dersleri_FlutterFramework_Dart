import 'dart:io';

void main(List<String> args) {
  print("anne çocuğu ekmek almaya yollar");
  uzunSurenIslem();
  print("peynir zeytin hazırlanır");
  print("kahvaltı hazır");
}

void uzunSurenIslem() {
  print("çocuk ekmek almak için evden çıkar");

  //asenkron çalışma örneği future
  Future.delayed(Duration(seconds: 5), () {
    print("çocuk eve ekmekle gelir");
  });
}
