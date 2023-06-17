void main(List<String> args) {
  List<int> sayilar = [244, 45, 14];
  if (sayilar.isNotEmpty) {
    print(sayilar.first);
    print(sayilar.last);
  } else {
    print("liste boş");
  }
  print("boş mu:" + sayilar.isEmpty.toString());

  print("eleman sayısı: ${sayilar.length}");

  print("ters sıra: ${sayilar.reversed}");
  //veri kalıcı olarak ters sıralanmıyor ana yapı bozulmuyor
  print(sayilar);

  // if (sayilar.contains(3)) {
  //   return true;
  // } else {
  //   return false;
  // } bunu umuta sor

  print(sayilar.elementAt(1)); //indexteki sayıyı verir
  print(sayilar.indexOf(45)); //sayının kaçıncı indexte old verir

  sayilar.shuffle();//elemanlarını yerini random değiştirir
  print(sayilar);
}
