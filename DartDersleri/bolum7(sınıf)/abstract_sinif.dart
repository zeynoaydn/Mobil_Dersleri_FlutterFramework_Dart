void main(List<String> args) {
  /*absract methodlar alt sınıflarca override edilmek
  zorundadır
  aşırı genel ifadeler için kullanılır
  bir sınıfta bir tane absract method varsa o sınıf 
  mutlaka absract tanımlanmalıdır*/

  //kare s1 = Kare(5); de yapabilirsin
  Sekil s1 = Kare(5);
  //s1.alanHesapla(); bu şekilde çıktı alamazsın
  print(s1.alanHesapla());
  print(s1.cevreHesapla());
  s1.selamla();

  print("********");

  Sekil s2 = Dikdortgem(5, 8);
  print(s2.alanHesapla());
  print(s2.cevreHesapla());
  s2.selamla();

  print("********");

  List<Kare> tumKareler = [];
  List<Dikdortgem> tumDikdortgenler = [];
  List<Sekil> tumSekiller = [];

  tumSekiller.add(s2);
  tumSekiller.add(s1);
  print(tumSekiller);

  print("********");

  test(s1);
  test(s2);
}

void test(Sekil sekil) {
  sekil.selamla();
}

abstract class Sekil {
  double alanHesapla();
  double cevreHesapla();

  void selamla() {
    print("şekil(parent) sınıfından selamlar");
  }
}

class Kare extends Sekil {
  int kenar;

  Kare(this.kenar);

  @override
  double alanHesapla() {
    return kenar * kenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return kenar * 4;
  }

  @override
  void selamla() {
    print("kare sınıfından selamlar");
  }
}

class Dikdortgem extends Sekil {
  int uzunKenar;
  int kisaKenar;

  Dikdortgem(this.uzunKenar, this.kisaKenar);

  @override
  double alanHesapla() {
    return uzunKenar * kisaKenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return ((uzunKenar + kisaKenar) * 2).toDouble();
  }

  @override
  void selamla() {
    print("dikdörtgen sınıfından selamlar");
  }
}
