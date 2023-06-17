import 'dart:io';

void main(List<String> args) {
  //3 tane double değişkenin ortalaması
  double s1 = 3.45;
  double s2 = 4.545;
  double s3 = 8.87;
  double ort = (s1 + s2 + s3) / 3;
  print(ort);

  print("**************");
  //kenarları girilen üçgen çeşidi
  int k1 = 3;
  int k2 = 3;
  int k3 = 8;
  if (k1 == k2 && k1 == k3) {
    print("eşkenar");
  } else if (k1 != k2 && k1 != k3) {
    print("çeşitkenar");
  } else {
    print("ikizkenar");
  }

  print("**************");
  //vize ve final notlarına göre geçip geçmediği
  //geçme notu en az 50,vize%40 final%60
  double viz = 30;
  double fin = 67;
  double sonuc = (viz * 0.4) + (fin * 0.6);
  if (fin <= 40) {
    print("final notun 40 tan dşük kaldın");
  } else {
    if (sonuc <= 50) {
      print("ortalamadan kaldın");
    } else {
      print("notun $sonuc geçtin");
    }
  }

  print("**************");
  //adını döndür tüm döngüleri kullan
  String name = "zeynep";
  for (int i = 0; i < name.length; i++) {
    print(name[i]);
  }

  print("**************");
  //1 den 100 e 15 e bölünen sayıların kareleri
  for (int i = 0; i < 100; i += 15) {
    print(i * i);
  }

  print("**************");
  //int sayısının faktöriyelini bulma
  int i = 6;
  int sayac = 1;
  if (i > 0) {
    while (i > 1) {
      sayac = sayac * i;
      i--;
    }
    print(sayac);
  } else {
    print("eksili sayı veya 0 olmaz");
  }
  
  print("**************");
  //iki notu girilen öğrencinin ort
  print("1. notunu gir");
  int? not1 = int.parse(stdin.readLineSync()!);
  print("2. notunu gir");
  int? not2 = int.parse(stdin.readLineSync()!);
  double deger = (not1 + not2) / 2;
  print("ortalaman:$deger");
  print("**************");
  //fiyatı girilen ürüne +%18kdv ekle ve son fiyatı yaz
  print("ürün fiyatını gir:");
  int? fiyat = int.parse(stdin.readLineSync()!);
  double sonDurum = (fiyat * 1.8) + fiyat;
  print("ürünün KDV'li hali:$sonDurum");
}
