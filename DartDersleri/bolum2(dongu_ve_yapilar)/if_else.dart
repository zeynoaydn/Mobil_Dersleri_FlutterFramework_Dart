void main(List<String> args) {
  int sayi = 12;
  num sayi2 = 31;
  if (sayi > sayi2) {
    print("$sayi sayısı $sayi2 'den büyüktür");
  } else {
    print("$sayi2 sayısı $sayi 'den büyüktür");
  }

  int sas1 = 12;
  int sas2 = 12;
  if (sas1 < sas2) {
    print("$sas2 sayısı $sas1 'den büyüktür");
  } else if (sas2 < sas1) {
    print("$sas1 sayısı $sas2 'den büyüktür");
  } else {
    print("$sas1=$sas2");
  }
}
