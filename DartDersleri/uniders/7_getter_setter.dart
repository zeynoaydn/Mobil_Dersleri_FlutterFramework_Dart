void main(List<String> args) {
  final zey = Ogrenci("zeynep", "aydın", 21, "kız", 100);
  print(zey.adi);
  print(zey.soyadi);

  print("********");

  zey.adiSoyadi = 'bihter uysal';
  print(zey.adiSoyadi);

  print("********");

  print(Ogrenci.okulAdi);

  print("********");

  print(okulIsmi);

  print("********");
}

String okulIsmi = 'Cumhuriyet ilkokulu';

class Ogrenci {
  static String okulAdi = 'Atatürk ilkokulu';
  String adi;
  String soyadi;
  int yas;
  String cinsiyet;
  int notu;

  Ogrenci(this.adi, this.soyadi, this.yas, this.cinsiyet, this.notu);

  String get adiSoyadi => '$adi $soyadi';

  void set adiSoyadi(String ad) {
    adi = ad;
  }
}
