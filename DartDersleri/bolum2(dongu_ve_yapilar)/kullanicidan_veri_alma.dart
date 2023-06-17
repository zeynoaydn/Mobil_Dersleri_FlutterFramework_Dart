import 'dart:io';

void main(List<String> args) {
  print("adını gir:");
  String? isim = stdin.readLineSync();
  //?koyduk kullanıcı isterse null değer girebilir(boş geçebilir)
  print("girilen isim:$isim");

  print("yaşını gir:");
  int? yas = int.parse(stdin.readLineSync()!);
  //çıktı  her zaman string olur,bizde int a çevirdik
  print("yaşın :$yas");
}


