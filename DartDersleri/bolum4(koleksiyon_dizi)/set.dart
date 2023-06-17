void main(List<String> args) {
  /*bir elemandan sadece bir tane olur
  list den farkı elemanları sıralı olarak tutmaz bu sebepten
  index kullanmayız
  index olmadan elemanları kontrol etmek için contain
  kullanılabilir.onun dışında list lerdeki tüm methdolar
  burada da kullanılabilir*/
  Set<String> isimler = Set();
  isimler.add("mert");
  isimler.add("ali");
  isimler.add("zeynep");
  isimler.add("nezaket");

  print(isimler);

  for (String i in isimler) {
    print("isim:$i");
  }

  if (isimler.contains("mert")) {
    print("isim sette mevcut");
  } else {
    print("isim mevcut değil");
  }

  bool sonuc = isimler.remove("nezaket");
  print("sonuc:" + sonuc.toString());
  print(isimler);

  Set<int> numaralar = Set.from(
      [1, 2, 13, 41, 41, 13, 1, 1, 1, 6, 6, 6, 7, 7, 43, 43, 87, 87, 6, 0, 5]);
  for (int i in numaralar) {
    print("numaralar:$i");
  }

  List<int> cift = [0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20];
  Set<int> cift_yeni = Set();
  cift_yeni.addAll(cift);
  print(cift_yeni);

  numaralar.addAll(cift_yeni);
  print(numaralar);

}
