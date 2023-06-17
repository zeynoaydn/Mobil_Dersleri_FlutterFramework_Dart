import 'VeriTabaniIslemleri.dart';
import 'musteri.dart';

void main(List<String> args) {
  /**
 * private değişken ve fonksiyonlar: Bir sınıftaki değişken ve 
 * metotları bazen erişime kapatmak isteyebiliriz. Bu 
 * durumlarda _ işareti ile bunları saklarız. 
 * 
 * getter metotlar: sınıf değişkenlerini okumak için kullanılan özel
 *  fonksiyonlardır.
 * Bu metotların amacı özellikle private yani dış 
 * dünyanın erişimine kapatılmış değişkenlerin
 * gerekli olduğunda okunmasını sağlamaktır.
 * 
 * setter metotlar: sınıf değişkenlerine veri atamak için 
 * kullanılır. Bu metotların amacı özellikle private yani dış 
 * dünyanun erişimine kapatılan değişkenlere veri atamaktır, ayrıca 
 * veri ataması yapılırken gerekli olan kontrollerin ve işlemlerin 
 * yapılması için kullanılır.
 */
  VeriTabaniIslemleri db = VeriTabaniIslemleri();
  VeriTabaniIslemleri db2 =
      VeriTabaniIslemleri.loginWithNamePassword("zeynep", "123");

  Musteri m1 = Musteri(453); //300 den küçük girersek null yazar
  m1.bilgileriyazdir();
  m1.musteriNoAta = 509;
  m1.bilgileriyazdir();

  print(m1.musteriNoSoyle);

  bool sonuc = db.baglan();
  // print(sonuc);
  print(db.kullaniciAdi);
  print(db.sifre);
  //sir _ atadık bu sayede sir değişkeninin
  //içerisinde erişemiiyoruz
  //kullanıcı class larda yazılan verilere erişebiliyor
  //bunun olmaması lazım _ kullandığımız kullanıcı
  //erişmesini istemediğimiz verilere erişemez

  if (sonuc) {
    print("bağlandık");
  } else {
    print("bağlanamadık");
  }
}
