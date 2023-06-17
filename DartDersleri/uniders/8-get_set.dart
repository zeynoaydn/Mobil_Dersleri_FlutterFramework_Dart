void main(List<String> args) {
  final zey = Ogrenci("zeynep", "aydın", 21, "bayan", 100000, false);

  print(zey.adiSoyadi);
}

class Ogrenci {
  String adi;
  String soyadi;
  int yasi;
  String cinsiyeti;
  int notu;
  bool mezunMu;

  Ogrenci(this.adi, this.soyadi, this.yasi, this.cinsiyeti, this.notu,
      this.mezunMu);

  String get adiSoyadi => '$adi $soyadi';

  set adiSoyadi(String value) {
    int bosluk = value.indexOf(' ');
    adi = value.substring(0, bosluk);
    soyadi = value.substring(bosluk + 1);
  }

  @override
  String toString() {
    return '$adi $soyadi $yasi $cinsiyeti $notu $mezunMu';
  }
}
