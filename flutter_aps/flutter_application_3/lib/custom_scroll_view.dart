import 'package:flutter/material.dart';
import 'dart:math' as matematik;

class CustomView extends StatelessWidget {
  const CustomView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text('Bihter&Behlül'),
          backgroundColor: Colors.red.shade300,
          expandedHeight: 300,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            // title: Text('Aşkı Memnu'),
            centerTitle: false,
            background: Image.asset(
              "assets/image/indir.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            sabitListeElamanlari,
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: SliverList(
              delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
                  childCount: 10)),
        ),
        SliverFixedExtentList(
          delegate:SliverChildListDelegate(
            sabitListeElamanlari
            ),
          itemExtent: (100),
        ),

        //sabit olan slivergrid
        SliverGrid(
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          //satırda kaç eleman olacağını yazdık
          delegate:SliverChildListDelegate(sabitListeElamanlari),
          //üyeleri yazdık
        ),

        //dinamik olan slivergrid
        SliverGrid(
          delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
          childCount: 5), 
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3)),

        SliverGrid.count(crossAxisCount: 2),
        //bir satırda bulunacak grid eleman sayısı=2
        SliverGrid.extent(maxCrossAxisExtent: 200),
        //max genişlik 200 olacak
      ],
    );
  }

  List<Widget> get sabitListeElamanlari {
    return [
      Container(
        height: 100,
        color: rastgeleRenkUret(),
        alignment: Alignment.center,
        child: Text(
          'Sabit Liste Elemanı 1',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      Container(
        height: 100,
        color: rastgeleRenkUret(),
        alignment: Alignment.center,
        child: Text(
          'Sabit Liste Elemanı 2',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      Container(
        height: 100,
        color: rastgeleRenkUret(),
        alignment: Alignment.center,
        child: Text(
          'Sabit Liste Elemanı 3',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      Container(
        height: 100,
        color: rastgeleRenkUret(),
        alignment: Alignment.center,
        child: Text(
          'Sabit Liste Elemanı 4',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      Container(
        height: 100,
        color: rastgeleRenkUret(),
        alignment: Alignment.center,
        child: Text(
          'Sabit Liste Elemanı 5',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      Container(
        height: 100,
        color: rastgeleRenkUret(),
        alignment: Alignment.center,
        child: Text(
          'Sabit Liste Elemanı 6',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
    ];
  }

  Widget? _dinamikElemanUretenFonksiyon(BuildContext context, int index) {
    return Container(
      height: 100,
      color: rastgeleRenkUret(),
      alignment: Alignment.center,
      child: Text(
        'Dinamik Liste Elemanı ${index + 1}',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
    );
  }

  Color rastgeleRenkUret() {
    return Color.fromARGB(
      matematik.Random().nextInt(255),
      matematik.Random().nextInt(255),
      matematik.Random().nextInt(255),
      matematik.Random().nextInt(255),
    );
  }
}
