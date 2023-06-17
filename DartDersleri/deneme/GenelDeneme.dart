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
