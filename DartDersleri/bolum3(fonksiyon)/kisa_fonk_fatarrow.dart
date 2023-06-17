void main(List<String> args) {
  sayilariTopla();

  // int sonuc = sayilariCikar(45, 23);
  // print("cıkarma $sonuc");

  print("cıkarma " + sayilariCikar(56, 23).toString());

  max(23, 23);
}

void sayilariTopla() {
  int sayi1 = 10;
  int sayi2 = 5;
  print("toplam ${sayi1 + sayi2}");
}

// sayilariCikar(int sayi3, sayi4) {
//   return sayi3 - sayi4;
// }

sayilariCikar(int sayi3, sayi4) => sayi3 - sayi4;
//bu gösterimde return veya süslü gösterim yok
//tek ssatırlık komut olacak

void max(int sas1, int sas2) {
  if (sas1 > sas2) {
    print("$sas1 sayısı $sas2 ' den büyüktür");
  } else if (sas1 < sas2) {
    print("$sas2 sayısı  $sas1 ' den büyüktür");
  } else {
    print("$sas1 ve $sas2 birbirlerine eşittir");
  }
}
// ya da
//if(sas1>sas2)
//return s1;
//else
//return s2 de yapabilirdin
