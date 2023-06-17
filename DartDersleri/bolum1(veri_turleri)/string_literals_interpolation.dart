void main(List<String> args) {
  //birleştirmek için + kullanabilirsin
  //birrden fazla ifade varsa $(ifade.method) olarak kullanmalısın
  String isim = "zeyzey";
  String soyIsim = "aydın";
  var kurs = 'dart\'ın kullanımı';
  String kursTanimi = "dart'ı ve flutter'ı öğreneceğiz";

  //print(isim+" "+soyIsim);
  print("$isim  $soyIsim");
  print("soyadım olan $soyIsim 'da bulunan karakter sayısı:" +
      soyIsim.length.toString());
  print(
      "soyadım olan $soyIsim ' da bulunan karakter sayısı: ${soyIsim.length}");

  double en = 10;
  double boy = 12;
  double sonuc = 10 * 12;
  //print(sonuc);
  print("eni $en ve boyu $boy olan dikdörtgenin alanı:${en * boy}");
  print("eni $en e boyu $boy olan dikdörtgenin alanı:${en.toInt() * boy.toInt()}");
}
