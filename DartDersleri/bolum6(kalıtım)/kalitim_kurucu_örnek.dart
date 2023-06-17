void main(List<String> args) {
  Kisi zeynep = Kisi("zeynep", 21);
  zeynep.kendiniTanit();

  Calisan mert = Calisan("mert", 22, 1234);
  mert.kendiniTanit();
}

class Kisi {
  String isim;
  int yas;

  Kisi(this.isim, this.yas);

  void kendiniTanit() {
    print("benim adım $isim,yaşım $yas");
  }
}

class Calisan extends Kisi {
  int maas;
  Calisan(String name, int age, this.maas) : super(name, age);

  @override
  void kendiniTanit() {
    // print("benim adım $isim,yaşım $yas ve maaşım $maas");
    super.kendiniTanit();
    print("maaşım da $maas");
  }
}
