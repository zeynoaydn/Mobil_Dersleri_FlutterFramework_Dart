import 'dart:math';

class VeriTabaniIslemleri {
  String kullaniciAdi = "zeynep";
  String sifre = "12345";
  //private işlemleri ayrı dosyalarda yapılır
  String _sir = "önemli";

  //private olduğu için erişemeiyoruz
  bool baglan() {
    if (_internetVarmi()) {
      if (kullaniciAdi == "zeynep" && sifre == "12345" && _sir == "önemli") {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  // bool baglan() {
  //   if (kullaniciAdi == "zeynep" && sifre == "12345" && _sir == "önemli") {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

  VeriTabaniIslemleri(){}
  VeriTabaniIslemleri.loginWithNamePassword(String kullaniciAdi,String sifre){
  }

  //bu sınıfa erişemiyoruz
  bool _internetVarmi() {
    if (Random().nextBool()) {
      return true;
    } else {
      return false;
    }
  }
}
