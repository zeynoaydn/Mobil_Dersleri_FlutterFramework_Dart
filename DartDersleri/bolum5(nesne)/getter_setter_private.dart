
import 'musteri.dart';
import 'VeriTabaniIslemleri.dart';

/**
 * private değişken ve fonksiyonlar: Bir sınıftaki değişken ve metotları 
 * bazen erişime kapatmak isteyebiliriz. Bu durumlarda _ işareti ile 
 * bunları saklarız. 
 * 
 * getter metotlar: sınıf değişkenlerini okumak(voi gibi) için kullanılan özel 
 * fonksiyonlardır.
 * Bu metotların amacı özellikle private yani dış dünyanın erişimine kapatılmış 
 * değişkenlerin
 * gerekli olduğunda okunmasını sağlamaktır.
 * 
 * setter metotlar: sınıf değişkenlerine veri atamak için kullanılır. Bu 
 * metotların amacı özellikle private yani dış dünyanun erişimine kapatılan 
 * değişkenlere veri atamaktır, ayrıca veri ataması yapılırken gerekli olan 
 * kontrollerin ve işlemlerin yapılması için kullanılır.
 */
main(List<String> args) {
  Musteri m1 = Musteri(450);
  m1.bilgileriyazdir();
  m1.musteriNoAta = 952;

  //get 
  print(m1.musteriNoSoyle);

  Musteri m2 = Musteri(-999);

  VeriTabaniIslemleri db = VeriTabaniIslemleri();

  bool sonuc = db.baglan();
  if (sonuc) {
    print("Baglandım");
  } else {
    print("Baglanamadı");
  }
}
