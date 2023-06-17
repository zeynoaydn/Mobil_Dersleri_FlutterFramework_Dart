import 'package:deneme_flutter_application_1/deneme_1.dart';
import 'package:deneme_flutter_application_1/deneme_2.dart';
import 'package:deneme_flutter_application_1/deneme_3.dart';
import 'package:deneme_flutter_application_1/deneme_4_row.dart';
import 'package:deneme_flutter_application_1/deneme_5_column.dart';
import 'package:deneme_flutter_application_1/deneme_6_expanded.dart';
import 'package:deneme_flutter_application_1/deneme_7_flexible.dart';
import 'package:deneme_flutter_application_1/soru.dart';
import 'package:deneme_flutter_application_1/sorudeneme.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return deneme_6_expanded();
  }
}
