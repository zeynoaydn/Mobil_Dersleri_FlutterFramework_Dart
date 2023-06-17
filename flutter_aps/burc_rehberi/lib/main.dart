import 'package:flutter/material.dart';
import 'package:flutter_application_5/akrep.dart';
import 'package:flutter_application_5/burclar_listesi.dart';
import 'package:flutter_application_5/kova.dart';
import 'package:flutter_application_5/yay.dart';
import 'package:flutter_application_5/yengec.dart';
 
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColorLight: Colors.lightBlueAccent),
      title: 'Material App',
      home: BurclarListesi(),
    );
  }
}
