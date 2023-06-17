void main(List<String> args) {
  // int toplam = toplamFonk(23, 54, 86);
  int toplam = toplamFonk(23, 54);
  print("toplam $toplam");

  int toplam2 = toplamFonk2(s5: 6, s6: 34, 4);
  print("toplam $toplam2");

  int hacim = hacimHesapla(boy: 2, en: 23);
  print("hacim $hacim");
}

// int toplamFonk(int s1, int s2, int s3) {
//   return s1 + s2 + s3;
// }

int toplamFonk(int s1, int s2, [int s3 = 0])
//[int s2=0,int s3=0] de yapabilirsin
//kullanıcı s3 opsiyonel
//kullanıcı istemezse girmeyebilir
{
  return s1 + s2 + s3;
}

//kullanıcı isterse girer istemezse girmez,istediği sırayla girer
//s4 mutlaka değer verilmeli diğerleri opsiyonel
int toplamFonk2(int s4, {int s5 = 0, int s6 = 0}) {
  return s4 + s5 + s6;
}

int hacimHesapla({int en = 1, int boy = 1, int yukseklik = 1}) {
  return en * boy * yukseklik;
}
