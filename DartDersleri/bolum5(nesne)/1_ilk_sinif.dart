void main(List<String> args) {
  int sayi = 5;

  Ogrenci zeynep = Ogrenci(); //yeni öğrenci oluşturduk
  zeynep.ogrAd = "zeynep nezaket";
  zeynep.aktifMi = true;
  zeynep.ogrNo = 1234;

  Ogrenci mert = Ogrenci();
  mert.ogrAd = "mert ali";
  mert.aktifMi = false;
  mert.ogrNo = 4321;
  
  var bihter = Ogrenci();
  bihter.dersCalis();
}

class Ogrenci {
  //instance variables denir aşağıdakilere
  int ogrNo = 1;
  String? ogrAd = "";
  bool? aktifMi = true;

  void dersCalis() {
    print("öğrenci ders çalışıyor");
  }
}
