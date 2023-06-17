import 'package:flutter/material.dart';
import 'package:flutter_application_5/akrep.dart';
import 'package:flutter_application_5/aslan.dart';
import 'package:flutter_application_5/balik.dart';
import 'package:flutter_application_5/basak.dart';
import 'package:flutter_application_5/boga.dart';
import 'package:flutter_application_5/ikizler.dart';
import 'package:flutter_application_5/koc.dart';
import 'package:flutter_application_5/kova.dart';
import 'package:flutter_application_5/oglak.dart';
import 'package:flutter_application_5/terazi.dart';
import 'package:flutter_application_5/yay.dart';
import 'package:flutter_application_5/yengec.dart';

class BurclarListesi extends StatelessWidget {
  const BurclarListesi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burçlar Listesi'),
      ),
      body: Center(
        child: ListView(
          children: [
            statikBurc(context)
          ],
        ),
      ),
    );
  }

  Column statikBurc(BuildContext context) {
    return Column(
            children: [
              TextButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/yengec');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Yengec()));
                  print('tıklandı');
                },
                child: Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/yengec2.jfif'),
                    title: Text('Yengeç'),
                    subtitle: Text('23 Haziran-22 Temmuz'),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Aslan()));
             
                },
                child: Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/aslan.jfif'),
                    title: Text('Aslan'),
                    subtitle: Text('22 Temmuz-23 Ağustos'),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Akrep()));
             
                },
                child: Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/akrep.png'),
                    title: Text('Akrep'),
                    subtitle: Text('23 Ekim-22 kasım'),
                    trailing: Icon(Icons.arrow_right),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Balik()));
             
                },
                child: Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/balık.jfif'),
                    title: Text('Balik'),
                    subtitle: Text('20 Şubat-20 Mart'),
                    trailing: Icon(Icons.arrow_right),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Basak()));
             
                },
                child: Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/başak.jfif'),
                    title: Text('Başak'),
                    subtitle: Text('23 Ağustos-23 Eylül'),
                    trailing: Icon(Icons.arrow_right),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Boga()));
             },
                child: Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/boga.jfif'),
                    title: Text('Boğa'),
                    subtitle: Text('21 Nisan-21 Mayıs'),
                    trailing: Icon(Icons.arrow_right),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Ikizler()));
             
                },
                child: Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/ikizler.jfif'),
                    title: Text('İkizler'),
                    subtitle: Text('22 Mayıs-22 Haziran'),
                    trailing: Icon(Icons.arrow_right),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Koc()));
             
                },
                child: Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/koc.jfif'),
                    title: Text('Koç'),
                    subtitle: Text('21 Mart-20 Nisan'),
                    trailing: Icon(Icons.arrow_right),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Kova()));
             
                },
                child: Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/kova.jfif'),
                    title: Text('Kova'),
                    subtitle: Text('21 Ocak-19 Şubat'),
                    trailing: Icon(Icons.arrow_right),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Oglak()));
             
                },
                child: Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/oglak.jfif'),
                    title: Text('Oğlak'),
                    subtitle: Text('22 Aralık-20 Ocak'),
                    trailing: Icon(Icons.arrow_right),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Terazi()));
             
                },
                child: Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/terazi.jfif'),
                    title: Text('terazi'),
                    subtitle: Text('23 Eylül-22 Ekim'),
                    trailing: Icon(Icons.arrow_right),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Yay()));
             
                },
                child: Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/yay.jfif'),
                    title: Text('Yay'),
                    subtitle: Text('24  Kasım-22 Aralık'),
                    trailing: Icon(Icons.arrow_right),
                  ),
                ),
              ),
            ],
          );
  }
}
