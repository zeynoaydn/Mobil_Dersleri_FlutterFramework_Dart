void main(List<String> args) {
  /*METHOD OVERRİDİNG:üst sınıftaki değişken veya 
  methodların alt sınıf tarafından değiştirilmesi
  */
  USer user1 = USer();
  user1.girisYap();

  print("*********");
  NormalUser user2 = NormalUser();
  user2.davetEt();
  user2.girisYap();

  print("*********");
  SadeceOkuyabileNormalUser user3 = SadeceOkuyabileNormalUser();
  user3.girisYap();
  // user.davetEt();
  // user.adiniSoyle();
  
  print("*********");
  AdminUser user4 = AdminUser();
  user4.toplamKullaniciSayisiniGoster();
  
  print("*********");
  // AdminUser user5 = USer(); hatalı olur böyle
  USer user5 = AdminUser(); //upcasting yukarı çevrim denir buna
  USer user6 = SadeceOkuyabileNormalUser();

  /*farklı veri türlerinii tek bir şeyde toplayabiliriz*/
  List<USer> tumUserlar = [];
  tumUserlar.add(user1);
  tumUserlar.add(user2);
  tumUserlar.add(user3);

  test(user1);
  test(user2);
  test(user3);
  test(user4); //buna @override özelliğ atamadğımız için parent
  //özelliğini okudu
}

void test(USer kullanici) {
  kullanici.girisYap(); //polimorfizm çok biçimlilik
}

class USer {
  String email = "";
  String password = "";

  void girisYap() {
    print("parent user giriş yaptı");
  }
  /*ortak alanları burada topladık*/
}

class NormalUser extends USer {
  // String email = "";
  // String password = "";

  // void girisYap() {
  //   print("normal user giriş yaptı");
  // }

  void davetEt() {
    print("normal user arkadaşlarını davet etti");
  }

  @override
  void girisYap() {
    print("normal user giriş yaptı");
    /*üst sınıflardaki yapıları alt sınıflardaki ihtiyacımıza göre
    değiştirebiliriz*/
    /*user.girisYap() dediğimizde bize parent user giriş yaptı diyor.
    atanın printini  yazıyor. bu özelliği kullanarak kendi çıktımızı 
    yazdırdık*/
  }
}

class SadeceOkuyabileNormalUser extends NormalUser {
  void adiniSoyle() {
    print("ben sadece okuyabilirim");
  }

  @override
  void girisYap() {
    print("SadeceOkuyabileNormalUser user giriş yaptı");
  }
}

class AdminUser extends USer {
  // String email = "";
  // String password = "";

  // void girisYap() {
  //   print("admin user giriş yaptı");
  // }

  void toplamKullaniciSayisiniGoster() {
    print("toplam user sayisi 20");
  }
}
