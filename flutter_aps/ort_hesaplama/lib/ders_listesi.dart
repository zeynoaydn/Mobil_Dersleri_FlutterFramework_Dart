import 'package:flutter/material.dart';
import 'package:flutter_application_6/consts/app_constants.dart';
import 'package:flutter_application_6/helper/data_helper.dart';

import 'model/ders.dart';

class DersListesi extends StatefulWidget {
  const DersListesi({super.key});

  @override
  State<DersListesi> createState() => _DersListesiState();
}

class _DersListesiState extends State<DersListesi> {
  @override
  Widget build(BuildContext context) {
    List<Ders> tumDersler = DataHelper.tumEklenenDersler;
    return tumDersler.length > 0
        ? ListView.builder(
            itemCount: tumDersler.length,
            // itemCount: DataHelper.tumEklenenDersler.length,
            itemBuilder: (context, index) {
              return Dismissible(
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  setState(() {
                  DataHelper.tumEklenenDersler.removeAt(index);
                  });
                },
                key: UniqueKey(),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Card(
                    child: ListTile(
                      title: Text('Ders adı:${tumDersler[index].ad}' +
                          tumDersler[index].ad),
                      leading: CircleAvatar(
                        backgroundColor: Sabitler.anaRenk,
                        child: Text((tumDersler[index].harfDegeri *
                                tumDersler[index].krediDegeri)
                            .toStringAsFixed(1)),
                      ),
                      subtitle: Text(
                          'Not değeri:${tumDersler[index].harfDegeri}, Kredi değeri:${tumDersler[index].krediDegeri}'),
                    ),
                  ),
                ),
              );
            })
        : Center(
            child: Container(
            child: Text(
              'Lütfen Ders Ekleyin',
              style: Sabitler.baslikStyle,
            ),
          ));
  }
}
