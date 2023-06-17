import 'package:flutter/material.dart';
import 'package:flutter_application_4/card_listTile.dart';
import 'package:flutter_application_4/custom_scroll_view.dart';
import 'package:flutter_application_4/deneme_custom_scroll.dart';
import 'package:flutter_application_4/grid_view_kullanimi.dart';
import 'package:flutter_application_4/list_view_kullanimi.dart';
import 'package:flutter_application_4/list_view_layout_problemleri.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main(){
  runApp(const MyApp());
  configLoading();
  }

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.white
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = true;
}


class MyApp extends StatelessWidget { 
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: DenemeCustomScroll(),
      builder:EasyLoading.init(),
    );
  }
}
