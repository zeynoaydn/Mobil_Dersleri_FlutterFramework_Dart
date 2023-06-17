void main(List<String> args) {
  Ek mert = Ek("mert", "körüş", 22, false, 1234);
  mert.tanitim();

  Kisiler zeynep = Kisiler("zeynep", "aydın", 21, true);
  zeynep.tanitim();
}

class Kisiler {
  String name;
  String soyadi;
  int yas;
  bool cinsiyet;

  Kisiler(this.name, this.soyadi, this.yas, this.cinsiyet);

  void tanitim() {
    print(
        "benim adım $name,soyadım $soyadi,cinsiyetim $cinsiyet ve yaşım $yas");
  }
}

class Ek extends Kisiler {
  int maas;
  Ek(String ad, String soyad, int age, bool cins, this.maas)
      : super(ad, soyad, age, cins);

  @override
  void tanitim() {
    super.tanitim();
    print("ve ayrıca maaşım $maas");
  }
}
