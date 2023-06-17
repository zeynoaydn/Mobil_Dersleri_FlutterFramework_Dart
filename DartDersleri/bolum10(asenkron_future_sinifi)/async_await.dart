void main(List<String> args) async {
  print("internetten kişi verisi getirilecek");

  kisiyleIgiliIslemler();
  // String kisi = await kisiVerisiniGetir();
  //await kullanıyrsa async yazmak zorundasın

  // kisiVerisiniGetir().then((value) => print(value));
  // //"kişi adı:zeyzey ve id:21"=value oluyor

  print("başka işlemler yapılıyor");
  // print(kisi.length);
  print("işlem bitti");
}

void kisiyleIgiliIslemler() async {
  String kisi =await kisiVerisiniGetir();
  print(kisi.length);
}

Future<String> kisiVerisiniGetir() {
  return Future<String>.delayed(Duration(seconds: 2), () {
    return "kişi adı:zeyzey ve id:21";
  });
}
