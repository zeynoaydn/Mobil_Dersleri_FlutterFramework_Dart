void main(List<String> args) {
  Ogreenci zeynep = Ogreenci(2, "zeynep");
  Ogreenci mert = Ogreenci.idsiz("mert");

  Ogreenci ayse = Ogreenci.factoryKurucusu(-8, "aysem");
  print(ayse.id);
  print(ayse.isim);
}

class Ogreenci {
  int id = 0;
  String isim = "";

  Ogreenci(this.id, this.isim) {
    print("varsayılan kurucu çalıştı");
  }
  Ogreenci.idsiz(this.isim) {
    print("isimlendirilmiş kurucu çalıştırıldı");
  }

  //factory sayesinde nesne üretip return kullanılabiliyor
  factory Ogreenci.factoryKurucusu(int id, String isim) {
    if (id < 0) {
      return Ogreenci(5, isim);
    } else {
      return Ogreenci(id, isim);
    }
  }
}
