void main(List<String> args) {
  /*closure=özel bir fonksiyondur,closure ile bir üst
  kapsamdaki değişkenlerin değerlerini değiştirebiliriz*/
  var maindegisken = 1;

  void a() {
    var aDegiskeni = 2;

    void b() {
      var bDegiskeni = 3;
      print(aDegiskeni);
      print(maindegisken);
    }
  }

  // var d = topla(4);
  // print(d);

  // var s = d(4);
  // print(s);
  var dondurelnFonksiyon = topla(3);
  var sonuc = dondurelnFonksiyon(4);
  print(sonuc);
}

Function topla(int eleman) {
  return (int deger) => deger * eleman;
}
