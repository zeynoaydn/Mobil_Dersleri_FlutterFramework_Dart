void main(List<String> args) {
  print(toMap("zeynep", "aydın"));
  print(toMap("umut", "gedik"));
}

/*
fonk olacak fonkua ad ve soyad bilgisi verilecek bunu al
toMAp()
umut gedik 
ad:umut soyad:gedik
*/
Map<String, String> toMap(String ad, String soyad) {
  Map<String, String> bilgiler = {"ad": ad, "soyad": soyad};
  return bilgiler;
}
