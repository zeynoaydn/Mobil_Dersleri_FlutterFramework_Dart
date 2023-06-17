
import 'package:flutter/material.dart';
import 'package:flutter_application_6/dio_user.dart';
import 'package:flutter_application_6/local_json.dart';
import 'package:flutter_application_6/umut.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LocalJson(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Http Json'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LocalJson(),
                  ));
                },
                child: Text('Local Json')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => dio(),
                  ));
                },
                child: Text('Dio Kütüphanesi ile Uzak Api lerden Veri Çekmek'))
          ],
        ),
      ),
    );
  }
}
