import 'package:flutter/material.dart';

class PopUpMenuKullanimi extends StatefulWidget {
  const PopUpMenuKullanimi({super.key});

  @override
  State<PopUpMenuKullanimi> createState() => _PopUpMenuKullanimiState();
}

class _PopUpMenuKullanimiState extends State<PopUpMenuKullanimi> {
  String _secilenSehir = '';
  List<String> renkler = ['mavi', 'kırmızı', 'yeşil', 'sarı'];

  List<int> _sayilar = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  @override
  Widget build(BuildContext context) {
    return shortWay();
  }

  Center shortWay() {
    return Center(
      child: PopupMenuButton<String>(
        itemBuilder: (BuildContext context) {
          return <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Text('ankara'),
              value: 'ankara',
            ),
            PopupMenuItem(
              child: Text('kütahya'),
              value: 'kütahya',
            ),
            PopupMenuItem(
              child: Text('adana'),
              value: 'adana',
            ),
          ];
        },
      ),
    );
  }

  Center main() {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String sehir) {
          print('secilen sehir $sehir');
          setState(() {
            _secilenSehir = sehir;
          });
        },
        //hem icon hem de child:text ard arda yazılmıyor
        // icon: Icon(Icons.add),
        // child: Text('sehir sec '+_secilenSehir),
        itemBuilder: (BuildContext context) {
          // return <PopupMenuEntry<String>>[
          //   PopupMenuItem(
          //     child: Text('ankara'),
          //     value: 'ankara',
          //   ),
          //   PopupMenuItem(
          //     child: Text('kütahya'),
          //     value: 'kütahya',
          //   ),
          // PopupMenuItem(
          //   child: Text('adana'),
          //   value: 'adana',
          // ),
          // ];
          return renkler
              .map(
                (String renk) => PopupMenuItem(
                  child: Text(renk),
                  value: renk,
                ),
              )
              .toList();
        },
      ),
    );
  }
}
