void main(List<String> args) {
  // final ogrecni1 = {
  //   'adı': 'zeynep',
  //   'soyadı': 'aydın',
  //   'yas': 21,
  //   'cinsiyet': 'kadın',
  //   'not': 10000
  // };
  // print(ogrecni1);
  Ogrenci1 zeynep = Ogrenci1("zeynep", "aydın", 21, true, 1000);
  Ogrenci1 mert = Ogrenci1("mert", "körüş", 22, false, 0);
  // zeynep.kendiniTanit();
  print(zeynep.toString());
  print(mert.toString());

  zeynep.ortalama(56);
}

class Ogrenci1 {
  String ad;
  String soyad;
  int yas;
  bool cinsiyet;
  int not;

  Ogrenci1(this.ad, this.soyad, this.yas, this.cinsiyet, this.not);

  // void kendiniTanit() {
  //   print("benim adım $ad,soyadım $soyad,yaşım $yas,cinsiyetim $cinsiyet ve notum $not");
  // }

  String toString() {
    return "$ad $soyad $yas $cinsiyet $not";
  }

  void ortalama(num ort) {
  //   print(this.not >= ort ? 'geçti' : 'kaldı');
    if (this.not >= ort) {
      print("geçti");
    } else {
      print("kaldı");
    }
  }
}
