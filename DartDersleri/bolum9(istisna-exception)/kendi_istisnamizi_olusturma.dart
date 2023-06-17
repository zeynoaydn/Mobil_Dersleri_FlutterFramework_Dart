void main(List<String> args) {
  try {
    Ogrenci zey = Ogrenci(-23);
    print(zey.yas);
  } on AgeException catch (e) {
    print(e.mesaj);
  } finally {
    print("program bitti");
  }
}

class AgeException implements Exception {
  String mesaj;

  AgeException({this.mesaj = 'AgeException'});
}

class Ogrenci {
  int yas = 0;
  Ogrenci(int yas) {
    if (yas < 0) {
      throw AgeException(mesaj: 'AgeException-yaş negatif olmaz');
    } else
      this.yas = yas;
  }
}
