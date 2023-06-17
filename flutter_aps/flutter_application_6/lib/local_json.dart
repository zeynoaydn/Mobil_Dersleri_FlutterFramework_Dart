import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_6/model/araba_model.dart';

class LocalJson extends StatefulWidget {
  const LocalJson({super.key});

  @override
  State<LocalJson> createState() => _LocalJsonState();
}

class _LocalJsonState extends State<LocalJson> {
  String _title = 'Local Json İşlemleri';
  //Image _image = Image.asset('assets/images/loading.gif');
  late final Future<List<Araba>> _listeyiDoldur;
  @override
  void initState() {
    super.initState();
    _listeyiDoldur = arabalarJsonOku();
    /*build tekrar tekrar tetiklense bile bu fonksiyon
    tekrar tekrar tetiklenmez*/
  }

  @override
  Widget build(BuildContext context) {
    //arabalarJsonOku();
    return Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _title = 'buton tıklandı';
            });
          },
        ),
        body: FutureBuilder<List<Araba>>(
          //future: arabalarJsonOku(),
          future: _listeyiDoldur,
          // initialData: [
          //   /* veri gelene kadar ekranda bir şeyler gösterebilirsin */
          //   Araba(arabaAdi: 'Doblo', ulke: 'bilmiyorum', kurulusYili: 1919, model:[Model(modelAdi: 'adas', fiyat: 345, benzinli: true)] )
            
          // ],
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Araba>? arabaListesi = snapshot.data;
              return ListView.builder(
                itemCount: arabaListesi?.length,
                itemBuilder: (context, index) {
                  Araba oAnkiAraba = arabaListesi![index];
                  return ListTile(
                    // title: Text(arabaListesi![index].arabaAdi),
                    title: Text(oAnkiAraba.arabaAdi),
                    // subtitle: Text(arabaListesi[index].ulke),
                    subtitle: Text(oAnkiAraba.ulke),
                    leading: CircleAvatar(
                      child: Icon(Icons.add),
                      // Text(
                      //     arabaListesi[index].model[0].fiyat.toString(),),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            } else {
              /* future ya hata verecek ya da data verecek o zamana kadar
              işlem gerçekleşene kadar bu else kısmını verdik*/
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }

  Future<List<Araba>> arabalarJsonOku() async {
    try {
      /*5 saniye kadar bekliyoruz bekleyene kadarda else kısmı çalışıyor*/
      debugPrint('5 saniyelik işlem başlıyor');
      await Future.delayed(
        Duration(seconds: 5),
        () {
          debugPrint('5 saniyelik işlem bitti');
        },
      );

      String okunanString = await DefaultAssetBundle.of(context)
          .loadString('assets/data/arabalar.json');

      debugPrint(okunanString);
      debugPrint("***********************************************");

      var jsonObject = jsonDecode(okunanString); //json objesine dönüştürdük
      // debugPrint(jsonObject.toString());
      // debugPrint("***********************************************");

      // var mapObjesi = (jsonObject as List).map((e) => debugPrint(e.toString()));
      // debugPrint(mapObjesi.toString());
      // debugPrint("***********************************************");

      // List arabaListesi = jsonObject;

      // debugPrint(arabaListesi.toString());
      // debugPrint("***********************************************");

      // debugPrint(arabaListesi[0].toString());
      // debugPrint("***********************************************");

      // debugPrint(arabaListesi[2]['araba_adi'].toString());
      // debugPrint("***********************************************");

      // debugPrint(arabaListesi[2]['model'][0]['model_adi'].toString());

      List<Araba> tumArabalar = (jsonObject as List)
          .map((arabaMap) => Araba.fromMap(arabaMap))
          .toList();
      debugPrint(tumArabalar[0].model[1].modelAdi);
      debugPrint(tumArabalar.length.toString());

      return tumArabalar;
    } catch (e) {
      /*try kısmında çıkan hatayı bu kısımda yakalayabbiliriz*/
      debugPrint(e.toString());
      /*future türünde geriye bir error döndürdük*/
      return Future.error(e.toString());
    }
  }
}
