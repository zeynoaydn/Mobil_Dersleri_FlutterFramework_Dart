void main(List<String> args) {
  Math m1 = Math(23, 23);
  m1.topla();
  m1.cikar();

  print(Math.pi);
  Math.sinifAdiniSoyle();

  print("toplam işlem sayısı: ${Math.toplamIslemSayisi}");
}

class Math {
  //instance variable
  int birinciSayi = 0;
  int ikinciSayi = 0;
  static int toplamIslemSayisi = 0;

  //class variable,sınıf değişkeni
  //nesneye değil sınıfa bağlı
  static double pi = 3.14;
  //buna erişmek için nesne oluşturmaya gerek yok
  //direk math.değişkeni yazarak ulaşabilirsin
  
  static void sinifAdiniSoyle() {
    print("ben matematik sınıfıyım");
  }

  Math(this.birinciSayi, this.ikinciSayi);

  void topla() {
    toplamIslemSayisi++;
    print("toplam:${birinciSayi + ikinciSayi}");
  }

  void cikar() {
    toplamIslemSayisi++;
    print("çıkarma:${birinciSayi - ikinciSayi}");
  }
}
