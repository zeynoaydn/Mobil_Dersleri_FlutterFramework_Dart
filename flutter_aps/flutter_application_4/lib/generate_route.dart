import 'package:flutter/material.dart';
import 'package:flutter_application_4/blue_page.dart';
import 'package:flutter_application_4/main.dart';
import 'package:flutter_application_4/ogrenci_detay.dart';
import 'package:flutter_application_4/ogrenci_listesi.dart';
import 'package:flutter_application_4/orange_page.dart';
import 'package:flutter_application_4/purple_page.dart';
import 'package:flutter_application_4/red_page.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    // settings.name=gidilen rota
    //setting.arguments=yeni gidilecek rotaya veri yollanacaksa bu kulllanılır
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => AnaSayfa(),settings: settings);

      case '/purplePage':
        return MaterialPageRoute(builder: (context) => PurplePage(),settings: settings);

      case '/redPage':
        return MaterialPageRoute(builder: (context) => RedPage(),settings:settings);
      
      case '/orangePage':
        return MaterialPageRoute(builder: (context) => OrangePage(),settings:settings);
      
      case '/bluePage':
        return MaterialPageRoute(builder: (context) => BluePage(),settings:settings);

      case '/ogrenciListesi':
        return MaterialPageRoute(
          builder: (context) => OgrenciListesi(),settings: settings,
        );

      case '/ogrenciDetay':
        var parametredekiOgrenci=settings.arguments as Ogrenci;
        return MaterialPageRoute(
          builder: (context) => OgrenciDetay(secilenOgrenci: parametredekiOgrenci,),settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text('404'),
            ),
            body: Center(
                child: Text('Sayfa Bulunamadı',
                style:TextStyle(fontSize: 30, fontWeight: FontWeight.w400))),
          ),
        );
    }
  }
}
