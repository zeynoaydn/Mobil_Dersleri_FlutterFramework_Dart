void main(List<String> args) {
  Food erik = Food("erik", 1, "mavi", true);
  erik.Tanitim();

  print("********");

  Meyve elma = Meyve("elma", 2, "kırmızı", false, true);
  elma.Tanitim();

  print("********");

  Sebze patlican = Sebze("patlıcan", 1, "mor", false);
  patlican.Tanitim();
}

class Food {
  String name;
  String color;
  bool tatliMi;
  int yas;

  Food(this.name, this.yas, this.color, this.tatliMi);

  void Tanitim() {
    print("adı:$name,yaşı:$yas,rengi:$color ve tatlı mı $tatliMi");
  }
}

class Meyve extends Food {
  bool cekirdekliMi;
  Meyve(String name, int yas, String color, bool tatliMi, this.cekirdekliMi)
      : super(name, yas, color, tatliMi);

  @override
  void Tanitim() {
    super.Tanitim();
    print("cekirdeğim ise $cekirdekliMi ve ben bir meyveyim");
  }
}

class Sebze extends Food {
  Sebze(String name, int yas, String color, bool tatliMi)
      : super(name, yas, color, tatliMi);

  @override
  void Tanitim() {
    super.Tanitim();
    print("ve ayrıca ben bir sebzeyim");
  }
}
