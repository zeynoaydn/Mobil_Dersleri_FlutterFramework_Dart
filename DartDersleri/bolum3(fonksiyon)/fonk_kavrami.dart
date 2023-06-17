void main(List<String> args) {
  cevreyiHesapla();

  alanHesapla(7, 9);

  int sonuc = kareHesapla(3);
  print("alan $sonuc");

  hacimHesapla();

  hacimHesapla2(8, 9, 10);
  
  int sonuc2 = hacimHesapla3(8, 9, 10);
  print("hacim $sonuc2");
}

//parametresiz fonksiyon
void cevreyiHesapla() {
  int en = 5, boy = 7;
  int cevre = (en + boy) * 2;
  print("cevre $cevre");
}

//parametreli fonksiyon
void alanHesapla(int sayi1, int sayi2) {
  print("alan ${sayi1 * sayi2}");
  // int alan = sayi1 * sayi2;
  // print("alan $alan");
}

int kareHesapla(int sayi) {
  return sayi * sayi;
}

hacimHesapla() {
  int a1 = 8, a2 = 9, a3 = 10;
  int hacim = a1 * a2 * a3;
  print("hacim $hacim");
}

hacimHesapla2(int a4, a5, a6) {
  print("hacim ${a4 * a5 * a6}");
}

hacimHesapla3(int a7, a8, a9) {
  return a7 * a8 * a9;
}
