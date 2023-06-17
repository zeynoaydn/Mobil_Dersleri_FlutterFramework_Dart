import 'dart:math';

import 'cember_daire.dart';
import 'ogrenci.dart';

void main(List<String> args) {
  /*1)cemberdaire isimli sınıf oluştur.bu sınıfın yarıçap 
  alan kurucusu olmalı.ayrıca çevre ce alanını hesaplayan metotlar
  olamlı.(pi=3.14)*/
  CemberDaire d1 = CemberDaire(2);
  print("alan ${d1.alanHesapla()}");
  print(("cevre ${d1.cevreHesapla()}"));

  /*2)ogrenci isimli sınıf oluştur.bu sınıfta ogrencinin idsi ve not 
  değeri tutulmalı.100  elemanlı bir listede id ve not değerlerini
  rastgele oluşturarak bu ogrencileri saklayın ve bu ogrencileri
  yazdıran metodu yazın*/
  Ogrenci ogr = Ogrenci(Id: 5, not: 45);
  List<Ogrenci> tumOgrenciler = List.filled(5, Ogrenci());

  OgrenciListesiniDoldur(tumOgrenciler);
  // print(tumOgrenciler[5].not);
  // print(tumOgrenciler[5].Id);
  for (Ogrenci oankiOgrenci in tumOgrenciler) {
    print(oankiOgrenci);
  }

  print("tüm öğrencilerin ortalaması:" +
      ortalamaHesapla(tumOgrenciler).toString());
}

void OgrenciListesiniDoldur(List<Ogrenci> liste) {
  //yukarıdaki tumOgrenciler burada yazdığımız liste içerisinnde
  //tanımlanmış oldu
  for (int i = 0; i < liste.length; i++) {
    liste[i] = Ogrenci(Id: Random().nextInt(1000), not: Random().nextInt(100));
  }
}

double ortalamaHesapla(List<Ogrenci> liste) {
  int toplam = 0;
  for (Ogrenci oankiOgrenci in liste) {
    toplam = toplam + oankiOgrenci.not;
  }
  return toplam / liste.length;
}
