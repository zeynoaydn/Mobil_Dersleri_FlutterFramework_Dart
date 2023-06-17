import 'package:flutter/material.dart';
import 'package:flutter_application_4/ogrenci_listesi.dart';

class OgrenciDetay extends StatelessWidget {

  final Ogrenci secilenOgrenci;
  
  const OgrenciDetay({required this.secilenOgrenci,super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Öğrenci Detay'),
      ),
      body: Center(
        child:Column(
          children: [
            Text(secilenOgrenci.id.toString()),
            Text(secilenOgrenci.isim.toString()),
            Text(secilenOgrenci.soyisim.toString()),
          ],
        ) ),
    );
  }
}
