void main(List<String> args) {
  //sabit boyutlu dizilerde bu methotlar çalışmaz
  List<int> sayilar = [];
  sayilar.add(2);
  sayilar.add(4);
  sayilar.add(7);
  sayilar.add(5);
  sayilar.add(9);
  print(sayilar);
  print(sayilar.length);
  sayilar.remove(4); //verilen elemanı siler
  print(sayilar);
  sayilar.removeAt(1); //belirtilen indexi siler
  print(sayilar);
  sayilar[1] = 0; //1. indexe 0 yaz
  print(sayilar);

  List<int> sayilar2 = [1, 2, 3];
  sayilar2.add(32);
  print(sayilar2);

  List<int> sayilar3 = List.filled(10, 10, growable: true);
  //true ile listeyi büyüyebilen liste yaptık
  sayilar3.add(56);
  print(sayilar3);
  print(sayilar3.length);

  //aşağıdaki iki liste aynı
  //ikiside boş ve büyümeye hazır
  List<int> sayilar4 = List.empty(growable: true);
  List<int> sayilar5 = [];
  sayilar5.add(76);
  sayilar4.add(67);
  print(sayilar4);
  print(sayilar5);
}
