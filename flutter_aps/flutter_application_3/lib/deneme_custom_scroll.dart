import 'package:flutter/material.dart';
import 'dart:math' as math;

class DenemeCustomScroll extends StatelessWidget {
  const DenemeCustomScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text('Bihter&Behlül'),
          backgroundColor: Colors.red.shade300,
          expandedHeight: 350,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              'assets/image/indir.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            SabitListeEleman,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SliverList(
            delegate: SliverChildBuilderDelegate(
            _DinamikListeElemani,childCount: 10,
            )),
        )
      ],
    );
  }

  List<Widget> get SabitListeEleman {
    return [
            Container(
              height: 100,
              color: rastgeleRenkUretme(),
              alignment: Alignment.center,
              child: Text(
                'sabit liste elemanı ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 100,
              color: rastgeleRenkUretme(),
              alignment: Alignment.center,
              child: Text(
                'sabit liste elemanı ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 100,
              color: rastgeleRenkUretme(),
              alignment: Alignment.center,
              child: Text(
                'sabit liste elemanı',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 100,
              color: rastgeleRenkUretme(),
              alignment: Alignment.center,
              child: Text(
                'sabit liste elemanı ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
          ];
  }
}


  Widget? _DinamikListeElemani(BuildContext context,int index) {
    return Container(
      height: 100,
      color: rastgeleRenkUretme(),
      alignment: Alignment.center,
      child: Text('dinamik liste elemanı ${index+1}',
      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
  );
}

Color rastgeleRenkUretme() {
  return Color.fromARGB(
    math.Random().nextInt(255),
    math.Random().nextInt(255),
    math.Random().nextInt(255),
    math.Random().nextInt(255),
  );
}
