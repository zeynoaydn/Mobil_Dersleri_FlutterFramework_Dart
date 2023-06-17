import 'package:flutter/material.dart';
import 'package:flutter_application_5/dateTimePicker.dart';
import 'package:flutter_application_5/diger_formlar.dart';
import 'package:flutter_application_5/global_key_kullanimi.dart';
import 'package:flutter_application_5/stepper.dart';
import 'package:flutter_application_5/stepper_widget.dart';
import 'package:flutter_application_5/text_field.dart';
import 'package:flutter_application_5/text_form_field.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple
      ),
      home: StepperLogin(),
    );
  }
}