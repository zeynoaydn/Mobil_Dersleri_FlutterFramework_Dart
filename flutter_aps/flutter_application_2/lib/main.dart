import 'package:flutter/material.dart';
import 'package:flutter_application_2/dropdown_button.dart';
import 'package:flutter_application_2/image_widget.dart';
import 'package:flutter_application_2/my_counter_page.dart';
import 'package:flutter_application_2/pop_menu.dart';
import 'package:flutter_application_2/temel_butonlar.dart';

void main(List<String> args) {
  debugPrint('main metodu çalıştı');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('myapp build çalıştı');

    return MaterialApp(
      title: 'My Counter App',
      theme: ThemeData(
          primarySwatch: Colors.purple,

          //buradanda butonuna renk/ayar verebilirsin
          // outlinedButtonTheme: OutlinedButtonThemeData(
          //   style: OutlinedButton.styleFrom(
          //     backgroundColor: Colors.greenAccent
          //   )
          // ),

          //ya da tüm butonları aynı renk yapabilirsin
          // textButtonTheme: TextButtonThemeData(
          //   style:ButtonStyle(
          //     backgroundColor: MaterialStateProperty.all(
          //       Color.fromARGB(255, 233, 230, 30),),
          //   ) ),


        textTheme: TextTheme(
              headline1:
                  TextStyle(color: Colors.teal, fontWeight: FontWeight.bold))),


      // home: Scaffold(
      //   appBar: AppBar(
      //     title:Text('Image Ornekleri'), ),
      //     body: ImageOrnekleri(),


      home: Scaffold(
        appBar: AppBar(
          title: Text('Buton Örnekleri'),

          //bunu kullanarak seçenekelrimiz üste geldi
          actions: [PopUpMenuKullanimi()],
        ),
        body: TemelButonlar(),
      ),
    );
  }
}
