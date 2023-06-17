void main(List<String> args) {
  double alan = alanHesapla(4);
  print("daire alanı $alan");

  ucgenCesitleri(12, 34, 12);

  int sayac = ciftHesapla(20);
  print("çift sayilarin toplamı $sayac");
}

/*daire alanını hesapla fonksiyonla.pi opsiyonel olacak
eğer pi verilmediyse 3.14 olarak hesaplasın*/
double alanHesapla(double r, [double pi = 3.14]) {
  return pi * (r * r);
}

/*üçgenin kenar değerlerine göre üçgeni isimlendir
geriye değer döndürmesin*/
void ucgenCesitleri(int birincik, int ikincik, int ucuncuk) {
  if (birincik != ikincik && birincik != ucuncuk && ikincik != ucuncuk) {
    print("çeşitkenar");
  } else if (birincik == ikincik || birincik != ucuncuk) {
    print("ikizkenar");
  } else {
    print("eşkenar");
  }
}

/*parametre olarak bir tane int sayı alan fonk yaz
bu fonk aldığı değere kadar olan çift sayıların toplamını
geriye döndürsün*/
ciftHesapla(int sayi) {
  int sayac = 0;
  if (sayi % 2 != 0) {
    print("sayımız tek sayı");
  } else if (sayi < 0) {
    print("sayı negatif");
  } else {
    for (int i = 0; i <= sayi; i++) {
      sayac = sayac + sayi;
    }
  }
  return sayac;
}
