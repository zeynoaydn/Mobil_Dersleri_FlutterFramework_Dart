import '../deneme/GenelDeneme.dart';

/**
 * Soru
 * Bir fonksiyon yazın bu fonksiyon aldıgı id parametresine göre 
 * bir kullanıcı getirsin. Bu işlem 2 saniye sonunda 
 * sonuclanacaktır ve getirilen kişi bilgisi map olarak 
 * alınacaktır. Bu map yapısında username ve id bilgisi olması 
 * yeterlidir.
 * 
 * getirilen kişi bilgisindeki username değerini kullanarak 
 * kişinin kurslarını getiren bir fonksiyon yazın. Bu fonksiyon 
 * 4 saniye sürecektir ve username değerine ait olan kursları 
 * içinde kursun adları olan bir liste olarak döndürecektir.
 * 
 * 
 * Son olarak da kurslar listesindeki ilk elemanı parametre 
 * olarak alan ve bu kursa ait bir yorumu döndüren bir fonksiyon 
 * yazın,. Bu fonksiyon 1 saniye sürecektir. 
 */
void main(List<String> args) {
   idyeGoreUserGetir(4).then((value) {
    print(value);
    usernameGoreKurslarietir(value['username']).then((List kurslar) {
      print(kurslar);
      String ilk_kurs = kurslar[0];
      yorumlariGsoter(ilk_kurs).then((String yorum) {
        print(yorum);
      });
    });
  });

  //aşağıdaki hatalı kodlar ilk görev bittikten sonra ikinci
  //görev tetiklenir
  //ben ilk görev bitmeden ikinci görevi çağırmışım
  // idyeGoreUserGetir(8).then(
  //   (value) => print(value),
  // );

  // usernameGoreKursGetir("zeynep").then(
  //   (value) => print(value),
  // );

  // yorumlariGoster("seramik").then((value) => print(value));
}

Future<Map<String, dynamic>> idyeGoreUserGetir(int id) {
  print("$id id li kullanıcı getiriliyor");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {'username': 'zeynep', 'id': id};
  });
}

Future<List> usernameGoreKurslarietir(String username) {
  print("$username adlı kullanıcının kursları");
  return Future<List>.delayed(Duration(seconds: 4), () {
    return ["seramik", "resim", "piyano"];
  });
}

Future<String> yorumlariGsoter(String yorum) {
  print("$yorum adlı kursunun yorumu  getiriliyor...");
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "idare eder";
  });
}