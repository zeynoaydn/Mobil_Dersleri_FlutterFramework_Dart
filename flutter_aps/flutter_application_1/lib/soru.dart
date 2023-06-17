import 'package:flutter/material.dart';

class soru extends StatefulWidget {
  const soru({super.key});

  @override
  State<soru> createState() => _soruState();
}

class _soruState extends State<soru> {
  Container kutuOlustur({required String harf,double boyut=50,required Color renk}) => Container(
        width: boyut,
        height: boyut,
        child: Text(harf),
        color: renk,
        alignment: Alignment.center,
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Soru Çözümü'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              kutuOlustur(harf: 'D', renk: Colors.purple.shade100),
              kutuOlustur(harf: 'E', renk: Colors.purple.shade200),
              kutuOlustur(harf: 'R', renk: Colors.purple.shade300),
              kutuOlustur(harf: 'S', renk: Colors.purple.shade400),
              kutuOlustur(harf: 'L', renk: Colors.purple.shade500),
              kutuOlustur(harf: 'E', renk: Colors.purple.shade600),
              kutuOlustur(harf: 'R', renk: Colors.purple.shade700),
              kutuOlustur(harf: 'İ', renk: Colors.purple.shade800),
            ],
            // children: [
            //   Container(
            //     width: 50,
            //     height: 50,
            //     child: Text('D'),
            //     color: Colors.purple,
            //     alignment: Alignment.center,
            //   ),
            //    Container(
            //     width: 50,
            //     height: 50,
            //     child: Text('E'),
            //     color: Colors.purple,
            //     alignment: Alignment.center,
            //   ),
            //    Container(
            //     width: 50,
            //     height: 50,
            //     child: Text('R'),
            //     color: Colors.purple,
            //     alignment: Alignment.center,
            //   ),
            //    Container(
            //     width: 50,
            //     height: 50,
            //     child: Text('S'),
            //     color: Colors.purple,
            //     alignment: Alignment.center,
            //   ),
            //    Container(
            //     width: 50,
            //     height: 50,
            //     child: Text('L'),
            //     color: Colors.purple,
            //     alignment: Alignment.center,
            //   ),
            //    Container(
            //     width: 50,
            //     height: 50,
            //     child: Text('E'),
            //     color: Colors.purple,
            //     alignment: Alignment.center,
            //   ),
            //    Container(
            //     width: 50,
            //     height: 50,
            //     child: Text('R'),
            //     color: Colors.purple,
            //     alignment: Alignment.center,
            //   ),
            //    Container(
            //     width: 50,
            //     height: 50,
            //     child: Text('İ'),
            //     color: Colors.purple,
            //     alignment: Alignment.center,
            //   ),
            // ],
          ),
          kutuOlustur(harf: 'A', renk: Colors.purple.shade200),
          kutuOlustur(harf: 'R', renk: Colors.purple.shade300),
          kutuOlustur(harf: 'T', renk: Colors.purple.shade400),
          // Container(
          //   width: 50,
          //   height: 50,
          //   child: Text('A'),
          //   color: Colors.purple,
          //   alignment: Alignment.center,
          // ),
          // Container(
          //   width: 50,
          //   height: 50,
          //   child: Text('R'),
          //   color: Colors.purple,
          //   alignment: Alignment.center,
          // ),
          //  Container(
          //   width: 50,
          //   height: 50,
          //   child: Text('T'),
          //   color: Colors.purple,
          //   alignment: Alignment.center,
          // ),
        ],
      ),
    );
  }
}
