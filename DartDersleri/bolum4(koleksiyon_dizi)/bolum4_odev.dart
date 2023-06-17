import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  /*1)sehirleri tutan bir liste olacak,4 tane il ekleyip ekranda
  yazdır*/
  List<String> sehirler = [];
  sehirler.add("ankara");
  sehirler.add("erzincan");
  sehirler.add("adıyaman");
  sehirler.add("bursa");
  print("sehirler=$sehirler");

  /*2)keyleri string degerleri dynamic olan bir map olacak.bu map
  yapısında bilgisayarınızın işlemci çekirdek sayısını,ram 
  miktarını ve ssd ollup olmadığını tut ve yazdır*/
  Map<String, dynamic> comp = {
    "islemci": 23,
    "cekirde": 43,
    "ram": 6,
    "ssd": true
  };
  print(comp);

  /*3)key string,deger dynamic map olan bir liste oluştur
  her bir eleman il adını,ilçe sayısını,plaka kodunu tutsun
  sonra bu listeyi okunaklı şekilde yazdır*/
  Map<String, dynamic> mapList = {
    "elemanFirst": {"il_adi": "ankara", "ilce_sayisi": 21, "plaka": 06},
    "elemanSecond": {"il_adi": "bursa", "ilce_sayisi": 43, "plaka": 42},
    "elemanThird": {"il_adi": "afyon", "ilce_sayisi": 5, "plaka": 34}
  };
  // print(mapList);
  for (var i in mapList.entries) {
    print(i);
  }

  /*4)5 elemanlı iki farklı  liste olacak.elemanlar 0-50 ye 
  rastgele şekilde oluşturulsun bu elemanları tek bir listeye
  aktarın.oluşan son listenin elemanlarının karelerini tutan
  set yapısı oluşturup ekrana yazdırın*/
  List<int> liste1 = List.filled(5, 0);
  List<int> liste2 = List.filled(5, 0);
  List<int> sonListe = <int>[];

  for (int i = 0; i < 5; i++) {
    liste1[i] = Random().nextInt(50);
    liste2[i] = Random().nextInt(50);
  }

  sonListe = [...liste1, ...liste2];
  print(sonListe);
  for (int j = 0; j < sonListe.length; j++) {
    sonListe[j] *= sonListe[j];
  }
  print(sonListe);

  Set<int> aktarma = Set();
  aktarma.addAll(sonListe);
  print(aktarma);

  /*5)kullanıcıdan aldığınız int pozitif sayıları listede tutun,
  kullanıcı -1 değerini girdiğinde girilen sayıların ortalamasını
  ekrana yazdırın.*/
  //çalıştırmak için console=terminal aç
  List<int> girilenNotlar = <int>[];
  //List<int> girilenNotlar2 = List.empty(growable: true);
  int girilenNot = 0;
  do {
    print("lütfen notunuzu girin,çıkış için -1");
    girilenNot = int.parse(stdin.readLineSync()!);
    if (girilenNot != -1) {
      girilenNotlar.add(girilenNot);
    }
  } while (girilenNot != -1);
  print("kaç tane not girildi:${girilenNotlar.length}");
  double ortalama = listedekiElamanlarinToplaminiBul(girilenNotlar);
  print("notların ortalaması: $ortalama");
}

//yukarda girilenNtolar fonksiyonun içinde belirlediğimiz
//liste nin içinde saklanıyor
double listedekiElamanlarinToplaminiBul(List<int> liste) {
  int sayac = 0;
  for (int i = 0; i < liste.length; i++) {
    sayac += liste[i];
  }
  return sayac / liste.length;
}
