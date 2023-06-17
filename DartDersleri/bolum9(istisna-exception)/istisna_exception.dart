void main(List<String> args) {
  print("program başladı");

  int sayi = 100 ~/ 6; //küsüratı yazma int kısmı yaz
  print(sayi);

  /*try da hata çıkabilir dene
  catch de ise hata varsa çıkan hatayı yakala
  finally ise hata çıksın çıkmasın çalışacak yer*/
  try {
    int sayi2 = 100 ~/ 0;
    print(sayi2);
  } catch (e) {
    //yapılan hatayı yazdırdı
    print("hata çıktı ${e.toString()}");
  } finally {
    print("işlem bitt");
    //hata çıkmasa bile burası çalışacak
  }

  print("program bitti");
}
