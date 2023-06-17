import 'dart:io';

void main(List<String> args) {
  print("anne çocuğu ekmek almaya yollar");
  uzunSurenIslem();
  print("peynir zeytin hazırlanır");
  uzunSurenIslem2();
  print("kahvaltı hazır");
  uzunSurenIslem3();

}

void uzunSurenIslem3() {
  print("çocuk ekmekle sofraya oturdu");
  sleep(Duration(seconds: 2));
}

void uzunSurenIslem2() {
  print("anne sofrayı kurar");
  sleep(Duration(seconds: 2));
}

void uzunSurenIslem() {
  print("çocuk ekmek almak için evden çıkar");
  sleep(Duration(seconds: 2));
}
