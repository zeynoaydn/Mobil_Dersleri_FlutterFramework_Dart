class CemberDaire {
  int _yariCap = 1;
  double _pi = 3.14;

  //kurucu metot oluşturduk
  CemberDaire(int yariCap) {
    _yariCapKotnrol = yariCap;
  }
  
  void set _yariCapKotnrol(int deger) {
    if (deger > 0) {
      _yariCap = deger;
    } else {
      _yariCap = 1;
    }
  }

  double cevreHesapla() {
    return 2 * _pi * _yariCap;
  }

  double alanHesapla() {
    return _pi * _yariCap * _yariCap;
  }
}
