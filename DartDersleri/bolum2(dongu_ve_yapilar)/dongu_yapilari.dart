void main(List<String> args) {
  for (int i = 0; i < 10; i++) {
    print(i);
  }
  print("*************");
  for (int i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
  print("*************");
  List isimListesi = ["zeynep", "nezaket", "mert", "ali"];
  for (int j = 0; j < isimListesi.length; j++) {
    print(isimListesi[j]);
  }
  print("*************");
  for (String gecici in isimListesi) {
    print("$gecici");
  }
  print("*************");
  int sayac = 0;
  while (sayac < 4) {
    print("okunan sayac değeri $sayac");
    sayac++;
  }
  print("*************");
  int sayac2 = 0;
  do {
    print("okunan sayac değeri $sayac2");
    sayac2++;
  } while (sayac2 < 5);
  print("*************");
  for (int i = 0; i < 9; i++) {
    if (i > 5) {
      break;
    }
    print(i);
  }
  print("*************");
  for (int i = 1; i < 10; i++) {
    for (int j = 1; j < 10; j++) {
      print("$i*$j==${i * j}");
    }
  }
}
