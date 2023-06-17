void main(List<String> args) {
  /*lambda=ismi olmayan fonksiyonlar*/
  Function fonksiyon1 = (int a, int b) {
    int toplam = a + b;
    print(toplam);
  };
  fonksiyon1(3, 4);

  var f2 = (int s) => s * 2;
  //iki yazım türüde aynı
  var f3 = (int s2) {
    return s2 * 2;
  };
  var sayi = f2(4);
  print(sayi);
  print(f3(4));
}

//normal bir fonksiyon
void sayilariTopla(int a, int b) {
  int toplam = a + b;
  print(toplam);
}
