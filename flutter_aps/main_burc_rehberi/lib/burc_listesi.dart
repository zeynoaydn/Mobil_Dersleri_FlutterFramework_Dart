import 'package:burc_rehberi/burc_item.dart';
import 'package:burc_rehberi/data/strings.dart';
import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;
  BurcListesi() {
    tumBurclar = verikaynaginiHazirla();
    //print ile class ımız doğru çalışıyor mu diye kontrol ettik
    print(tumBurclar);
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Burçlar Listesi'),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return BurcItem(listelenenBurc: tumBurclar[index]);
          },
          itemCount: tumBurclar.length,
        ),
      ),
    );
  }
}

List<Burc> verikaynaginiHazirla() {
  List<Burc> gecici = [];
  for (int i = 0; i < 12; i++) {
    var burcAdi = Strings.BURC_ADLARI[i];
    var burcTarih = Strings.BURC_TARIHLERI[i];
    var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];
    //koc1.png değerini oluşturmak Koc--->koc--->koc1.png
    var burckucukResim = Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png';
    var burcbuyukresim =
        Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk' + '${i + 1}.png';
    Burc eklenecekBurc =
        Burc(burcAdi, burcTarih, burcDetay, burckucukResim, burcbuyukresim);
    gecici.add(eklenecekBurc);
  }
  return gecici;
}
