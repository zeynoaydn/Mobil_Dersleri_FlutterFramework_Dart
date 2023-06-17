import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({super.key});

  List<Ogrenci> tumOgrenciler = List.generate(
      500,
      (index) => Ogrenci(index + 1, 'öğrenci adı ${index + 1}',
          'öğrenci soyadı ${index + 1}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('öğrenci listesi'),
      ),
      body: seperatedMethod(),
    );
  }

  ListView seperatedMethod() {
    return ListView.separated(
      itemBuilder: ((BuildContext context, int index) {
        var oankiOgrenci = tumOgrenciler[index];
        return Card(
          color:
              index % 2 == 0 ? Colors.purple.shade100 : Colors.orange.shade100,
          child: ListTile(
            onTap: () {
              print("eleman tıklandı:$index");
              if (index % 2 == 0) {
                EasyLoading.instance.backgroundColor = Colors.red;
                EasyLoading.instance.textColor = Colors.purple;
              } else {
                EasyLoading.instance.backgroundColor = Colors.blue;
                EasyLoading.instance.textColor = Colors.amber;
              }
              EasyLoading.showToast(
                'elemana tıklandı',
                duration: Duration(seconds: 3), //3 saniye kadar ekranda kalacak
                dismissOnTap: true, //biri dokunudğunda kapatılacak
                toastPosition:
                    EasyLoadingToastPosition.bottom, //en altta yer alacak
              );
              
            },
            onLongPress: () {
              _alertDialogIslemleri(context, oankiOgrenci);
            },
            title: Text(oankiOgrenci.isim),
            subtitle: Text(oankiOgrenci.soyisim),
            leading: CircleAvatar(
              child: Text(oankiOgrenci.id.toString()),
            ),
          ),
        );
      }),
      itemCount: tumOgrenciler.length,
      separatorBuilder: (context, index) {
        var yeniIndex = index + 1;
        if (yeniIndex % 4 == 0) {
          return Divider(
            thickness: 2,
            color: Colors.teal,
          );
        }
        return SizedBox();
      },
    );
  }

  ListView builderMethod() {
    return ListView.builder(
      itemBuilder: ((BuildContext context, int index) {
        var oankiOgrenci = tumOgrenciler[index];
        return Card(
          color:
              index % 2 == 0 ? Colors.purple.shade100 : Colors.orange.shade100,
          child: ListTile(
            title: Text(oankiOgrenci.isim),
            subtitle: Text(oankiOgrenci.soyisim),
            leading: CircleAvatar(
              child: Text(oankiOgrenci.id.toString()),
            ),
          ),
        );
      }),
      itemCount: tumOgrenciler.length,
    );
  }

  ListView classsicListView() {
    return ListView(
      children: tumOgrenciler
          .map((Ogrenci ogr) => ListTile(
                title: Text(ogr.isim),
                subtitle: Text(ogr.soyisim),
                leading: CircleAvatar(
                  child: Text(ogr.id.toString()),
                ),
              ))
          .toList(),
    );
  }

  void _alertDialogIslemleri(BuildContext myContext, Ogrenci secilen) {
    showDialog(
        barrierDismissible: false,
        //bu çokk önemli !!!!!!
        //aşağıda oluşturduğumuz textbutton lardan birine basılıp
        //işlem yapılmasını sağlıyor
        context: myContext,
        builder: (context) {
          return AlertDialog(
            title: Text(secilen.toString()),
            //Text('dialog başlık'),
            content: SingleChildScrollView(
                child: ListBody(
              children: [
                Text('zeynep aydın' * 5),
                Icon(Icons.question_answer),
              ],
            )
                // Text('zeynep aydın'),
                ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  //butona basıldığında bir önceki sayfaya yönlendiriyor
                },
                child: Text('kapat'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('tamam'),
              ),
            ],
          );
        });
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);

  @override
  String toString() {
    return 'isim:$isim},soyisim:$soyisim,id:$id';
  }
}
