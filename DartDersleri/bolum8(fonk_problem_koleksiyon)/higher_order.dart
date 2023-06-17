void main(List<String> args) {
  /*higher order function=bir fonksiyonu parametre olarak
  alan veya geriye fonk döndüren fonksiyonlardır.*/

  List<int> liste = [1, 2, 3];

  // liste.forEach((element) {
  //   // print(element);
  //   print("element $element");
  // });
  liste.forEach(callback);

  kendiForeachYapim(liste, (int deger,int index) {
    print("değer $deger,index $index");
  });
}

void kendiForeachYapim(List<int> liste, Function callback) {
  for (int i = 0; i < liste.length; i++) {
    // print("eleman:${liste[i]}");
    //print yerine callback fonksiyonunu çağırdık
    callback(liste[i],i);
  }
}

void callback(int element) {
  print("element $element");
}
