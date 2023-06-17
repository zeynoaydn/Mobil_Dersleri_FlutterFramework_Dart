void main(List<String> args) {
  Araba honda = Araba(2020, "hondaa", true);
  // honda.marka = "honda";
  // honda.modelYili = 2020;
  // honda.otomatikMi = true;
  honda.bilgileriGoster();
  print("******");

  //veriyi değiştirirek construct yaptık
  honda.modelYili = 1980;
  honda.bilgileriGoster();
  print("******");

  var reno = Araba(1879, "reno", false);
  reno.bilgileriGoster();
  print("******");

  var bmw = Araba(2021, "bmw", true);
  bmw.bilgileriGoster();
  print("******");
}

class Araba {
  //soru işareti koyarak değerin null olabileceğini
  //yani boş geçilebileceğini gösterir
  int? modelYili;
  String? marka;
  bool? otomatikMi;

  Araba(int modelYili, String marka, bool otomaktikMi) {
    print("kurucu metot tetiklendi");
  }

  void bilgileriGoster() {
    print(
        "arabanın model yılı ${modelYili},markası ${marka},otomatik ${otomatikMi}");
  }
}
