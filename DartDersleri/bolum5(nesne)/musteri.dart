class Musteri {
  int? _musteriNo;

  // Musteri(int musteriNo) {
  //   this.musteriNo = musteriNo;
  // }

  // Musteri(this._musteriNo);

  Musteri(int musteriNo) {
    _musteriKontrol(musteriNo);
  }

  String get musteriNoSoyle {
    return "müşteri no:$_musteriNo";
  }

  String get musteriNoSoyle2 => "müşteri no:$_musteriNo";

  void set musteriNoAta(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else
      return;
  }

  void _musteriKontrol(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else
      return;
  }

  void bilgileriyazdir() {
    print("müşteri oluşturuldu müşteri no:$_musteriNo");
  }
}
