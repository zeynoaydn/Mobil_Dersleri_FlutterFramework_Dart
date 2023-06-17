import 'package:flutter/material.dart';
import 'package:flutter_application_6/consts/app_constants.dart';
import 'package:flutter_application_6/widgets/ortalam_hesapla_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dinamik Ortalama Hesaplama',
      theme: ThemeData(
        primarySwatch: Sabitler.anaRenk,
        visualDensity: VisualDensity.adaptivePlatformDensity
        ),
      home: OrtalamaHesaplaPage(),
    );
  }
}
