import 'dart:ffi';

void main(List<String> args) {
  /*set gibi sırasız
  list ve setten ayıran özelliği key ve value
  key değerlerin unique olması gerekir
  (sözlük)
  sabit değil dinamik uzunluğa sahip*/
  Map<String, int> alanKodlari = {"ankara": 312, "bursa": 345, "istanbul": 893};
  print(alanKodlari);
  print(alanKodlari["ankara"]);

  //birden fazla veri türü olduğu zaman dynamic kullan
  Map<String, dynamic> zeynep = {
    "soyadı": "aydın",
    "yasi": 21,
    "bolum": "bilgisayar",
    "kilo": 53.6,
    "bekarMi": true
  };
  print(zeynep);
  print(zeynep["yasi"]);
  print(zeynep["aydin"]);

  Map<String, dynamic> deneme = Map();
  Map<String, dynamic> deneme2 = Map();
  List sayilar = [3, 4, 5];
  deneme2['name'] = "zeynep hanım";
  print(deneme2);

  print("******");
  //keyleri gezme
  for (String now in zeynep.keys) {
    print(now);
  }
  print("******");
  //key değerlerini gezme
  for (String now in zeynep.keys) {
    print(zeynep[now]);
  }
  print("******");
  for (dynamic deger in zeynep.values) {
    print(deger);
  }
  print("******"); //entries ile key ve value yazılabilir
  for (var element in zeynep.entries) {
    // print(element);
    print("key:${element.key} value:${element.value}");
    //print(element);
  }

  print("******");
  //eleman var mı yok mu kontrol ediyoruz
  if (zeynep.containsKey('yasi')) ;
  {
    print("yaşı ${zeynep['yasi']}");
  }
}
