import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({super.key});
  int _rastgeleSayi = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScopeMethodu(context);
  }

  WillPopScope WillPopScopeMethodu(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('on will pop çalıştı');

        // print('$_rastgeleSayi');
        //bu şekilde kullanamayız bize sürekli null değer döndürür

        _rastgeleSayi = Random().nextInt(200);
        Navigator.pop(context, _rastgeleSayi);
        print('on will pop üretilen sayı $_rastgeleSayi');

        return Future.value(true);
        //false olduğu durumda geri gelme ikonu çalışmayacak
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Red Page'),
          backgroundColor: Colors.red.shade300,
          automaticallyImplyLeading: true,
          //bu özellik otommatik olarak true dur. eğer bu özelliği false yaparsak
          //geri gelme ikonu ortadan kalkar
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Red Page',
                style: TextStyle(fontSize: 24),
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
                  Navigator.pushNamed(context, '/greenPage');
                },
                child: Text('Go to Green'),
                style: ElevatedButton.styleFrom(primary: Colors.green.shade600),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Scaffold AnaYapi(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Red Page'),
        backgroundColor: Colors.red.shade300,
        automaticallyImplyLeading: true,
        //bu özellik otommatik olarak true dur. eğer bu özelliği false yaparsak
        //geri gelme ikonu ortadan kalkar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Red Page',style: TextStyle(fontSize: 24),),
            ElevatedButton(
                onPressed: () {
                  _rastgeleSayi = Random().nextInt(100);
                  print('Üretilen rastgele sayi $_rastgeleSayi');
                  Navigator.of(context).pop(_rastgeleSayi);
                },
                child: Text('Geri  Dön'))
          ],
        ),
      ),
    );
  }
}
