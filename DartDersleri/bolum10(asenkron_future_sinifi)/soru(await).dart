void main(List<String> args) async {
  Map<String, dynamic> gelenUSer = await idyeGoreUserGetir(5);
  List<String> kurslar = await usernameGoreKurslarietir(gelenUSer['username']);
  String yorumlar = await yorumlariGsoter(kurslar[0]);
  print(yorumlar);
}

Future<Map<String, dynamic>> idyeGoreUserGetir(int id) {
  print("$id id li kullanıcı getiriliyor");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {'username': 'zeynep', 'id': id};
  });
}

Future<List<String>> usernameGoreKurslarietir(String username) {
  print("$username adlı kullanıcının kursları");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ["seramik", "resim", "piyano"];
  });
}

Future<String> yorumlariGsoter(String yorum) {
  print("$yorum adlı kursunun yorumu  getiriliyor...");
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "idare eder";
  });
}
