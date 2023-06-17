import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/blue_page.dart';
import 'package:flutter_application_4/generate_route.dart';
import 'package:flutter_application_4/green_page.dart';
import 'package:flutter_application_4/red_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // home: AnaSayfa(),

      // routes: {
      //   '/redPage':(context) => RedPage(),
      //   '/':(context)=>AnaSayfa(),
      //   '/greenPage': (context) => GreenPage(),
      // },
      // onUnknownRoute: (settings) => MaterialPageRoute(builder: (context)=>
      // Scaffold(
      //   appBar: AppBar(
      //     title: Text('error'),
      //   ),
      //   body:Center(
      //     child: Text('404',
      //     style: TextStyle(fontSize: 50,fontWeight:FontWeight.bold),)),
      // )),

      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation İşlemleri'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                //push()  methodu sayesinde pop methodundaki işlemi burada yakaladık
                int? _gelenSayi = await Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => RedPage()));
                print('ana  sayfadaki sayi $_gelenSayi');
              },
              child: Text('kırmızı sayfaya gir IOS'),
              style: ElevatedButton.styleFrom(primary: Colors.red.shade300),

              // onPressed: () {
              //   Navigator.push(context,
              //       CupertinoPageRoute(builder: (context) => RedPage()));
              // },
              // child: Text(
              //   'Kırmızı sayfaya gir IOS',
              // ),
              // style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
            ),
            ElevatedButton(
              onPressed: () async {
                int? _gelenSayi2 = await Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => RedPage()));
                print('ana sayfadaki sayi2 $_gelenSayi2');
              },
              child: Text('Kırmızı sayfaya gir'),
              style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).maybePop();
                //maybepop()=anlamadım ama sen kullan iyi bir şeye benziyor
              },
              child: Text('Maybe Pop Kullanımı'),
              style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
            ),
            ElevatedButton(
              onPressed: () {
                if (Navigator.canPop(context)) {
                  //canPop()=öncesinde sayfa var mı yok mu onu kontrol ediyor
                  print('evet pop olabilir');
                } else {
                  print('hayır pop olamaz');
                }
              },
              child: Text('Can Pop Kullanımı'),
              style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => BluePage()));
              },
              /* örneğin kullanıcı login sayfasına girdi ve üye oldu bundan sonra 
              kullanıcının login sayfasına dönmemesi gerekir.loginden sonra
              kullanıcıyı anasayfaya yönlendirebiiriz. pushreplacament ta bunun
              için kullanılır*/
              child: Text('Push Replacament Kullanımı SAKIN BASMA'),
              style: ElevatedButton.styleFrom(primary: Colors.blue.shade600),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushNamed(route);
                Navigator.pushNamed(context, '/redPage');
              },
              child: Text('PushNamed Kullanımı'),
              style: ElevatedButton.styleFrom(primary: Colors.red.shade400),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/redPage7');
                //bilerek hatalı verdik
              },
              child: Text('PushNamed Hatalı Kullanım'),
              style: ElevatedButton.styleFrom(primary: Colors.green.shade300),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/ogrenciListesi', arguments: 50);
              },
              child: Text('Liste oluştur'),
              style: ElevatedButton.styleFrom(primary: Colors.orange.shade300),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/purplePage');
                },
                child: Text('Mor Sayfaya Git'),
                style: ElevatedButton.styleFrom(primary: Colors.purple.shade600),
                ),
          ],
        ),
      ),
    );
  }
}
