void main(List<String> args) {
  Araba honda = Araba(2020, "hondaa", true);
  honda.bilgileriGoster();
  print("******");

  honda.modelYili = 1980;
  honda.bilgileriGoster();
  print("******");

  var reno = Araba(1879, "reno", false);
  reno.bilgileriGoster();
  print("******");

  var bmw = Araba(2021, "bmw", true);
  bmw.bilgileriGoster();
  print("******");
  bmw.yasHesapla();

  print("******");
  var citroen = Araba.markasizKurucuMetot(2104, false);
  Araba suzuki = Araba.modelYiliOlmayanKurucuMetot(true, "suzuki");
  suzuki.bilgileriGoster();
  citroen.bilgileriGoster();
  suzuki.yasHesapla();
}

class Araba {
  int? modelYili;
  String? marka;
  bool? otomatikMi;

  //varsayılan ve parametre alan kurucu method
  Araba(this.modelYili, this.marka, this.otomatikMi) {
    print("kurucu metot tetiklendi");
  }

  //istediğimiz kadar oluşturulmuş kurucu methodlar var
  Araba.markasizKurucuMetot(this.modelYili, this.otomatikMi);
  Araba.modelYiliOlmayanKurucuMetot(bool otomatikMi, String marka) {
    this.otomatikMi = otomatikMi;
    this.marka = marka;
  }
   
   //sınıfta tanımlanan değişkenler=parametre olarak tanımlanan değişkenler
  // Araba(int modelYili, String marka, bool otomaktikMi) {
  //   print("kurucu metot tetiklendi");
  //   this.modelYili = modelYili;
  //   this.marka = marka;
  //   this.otomatikMi = otomatikMi;
  // }

  // Araba(int yil, String m, bool o) {
  //   print("kurucu metot tetiklendi");
  //   modelYili = yil;
  //   marka = m;
  //   otomatikMi = o;
  // }

  void bilgileriGoster() {
    print(
        "arabanın model yılı ${modelYili},markası ${marka},otomatik ${otomatikMi}");
  }

  void yasHesapla() {
    if (modelYili != null)
      print("arabanın yaşı ${2021 - modelYili!}");
    else
      print("model yılı olmadığından hesaplanamıyor");
  }
}
