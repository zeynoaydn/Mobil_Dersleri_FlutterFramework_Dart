void main(List<String> args) {
  /* list ikiye ayrılır
  1-sabit uzunluklu
  2-büyüyen listeler

  List<int> numaralar =List.filled(10,0)
  10 elemman içeren sabit uzunluklu dizi
  indexlere ulaşmak numaralar[0]
  */
  int sayi = 4;
  List<int> sayilar = List.filled(3, 4, growable: false);
  //growable yazmsana bile false olarak önceden tanımlanmış
  sayilar[0] = 7;
  sayilar[1] = 9;
  print(sayilar.length); //uzunluk değiştirlemez
  print(sayilar);
  print(sayilar[2]);

  List<String> isimler = List.filled(3, "");
  isimler[0] = "zeynep";
  isimler[1] = "mert";
  isimler[2] = 12.toString();
  print(isimler);

  //<dynamic> ile farklı veri türleri girebilirsin
  List<dynamic> karisik = List.filled(5, 0);
  karisik[0] = "mert";
  karisik[1] = "zeynep";
  karisik[2] = 270319;
  print(karisik);

  //liste elemanlarını gezmek
  for (int i = 0; i < sayilar.length; i++) {
    print(sayilar[i]+5);
  }
}
