import 'dart:math';

class Ogrenci {
  int Id;
  int not;

  //kullanıcı id ve not girmezse varsayılan 1 olacak
  Ogrenci({this.not = 1, this.Id = 1});

  @override
  String toString() {
    // TODO: implement toString
    return "ID:$Id,not:$not";
  }
  /*for dongusuyle  oankiOgrenciyi yazdırmaya çalıştık
  fakat program hem id hemde notu yazmadı çünkü hangisinii yazacağınıı 
  bilemedi .id veya .not .yaparak belirtmek gerekiyordu. tostring
  yaparak ikisinni birden yazdırabildik*/
}
