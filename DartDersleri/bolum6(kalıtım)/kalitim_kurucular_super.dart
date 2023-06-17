void main(List<String> args) {
  // Asker mert = Asker();
  //bunu yazmasan bile paretin olduğu için
  //kurucu methodu çağırmasan bile çalışır
  //en önce parent sonra çocuklar çalışır

  Asker ali = Asker("ali", 21);
  print(ali.ad);
  print(ali.yas);

  print("********");
  ali.Selamla();
  
  print("********");
  Er mert = Er("mert", 21);
  mert.Selamla();
}

class Asker {
  String ad = "varsayılan";
  int yas = 0;
  Asker(this.ad, this.yas)
  //this yaparsak veri alabiiliriz
  {
    print("asker sınıfının kurucusu çalıştı");
  }
  void Selamla() {
    print("merhaba adım $ad ve yaşım $yas");
  }
}

class Er extends Asker {
  Er(String ad, int yas) : super(ad, yas)
  //super ile üst sınıf(askere) a eriş ve
  //kurucuyu tetikledik
  {
    print("er sınıfının kurucusu çalıştı");
  }

  @override
void Selamla() {
  print("er sınıfından selamlar");
}
}


