void main(List<String> args) {
  int sayi1 = 23;
  int sayi2 = 54;
  int kucukSayi;

  // if (sayi2 < sayi1) {
  //   kucukSayi = sayi2;
  // } else {
  //   kucukSayi = sayi1;
  // }

  // sayi1 < sayi2 ? kucukSayi = sayi1 : kucukSayi = sayi2;

  kucukSayi = sayi1 < sayi2 ? sayi1 : sayi2;
  //sayi2 kucukse sayi1 değilse sayi2 yi yaz

  print(kucukSayi);

  String? ad = null;
  String? soyad = "zeyzey";
  String? mesaj;
  mesaj = ad ?? soyad;
  //eğer ad değişkeni null değilse mesaj ad değişkenini koy
  //değilse soyadı yaz
  print("merhaba $mesaj");
}
