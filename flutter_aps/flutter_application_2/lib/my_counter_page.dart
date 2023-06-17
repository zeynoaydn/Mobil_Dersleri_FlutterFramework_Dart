import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({super.key});

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('myhomepage build çalıştı');
    return Scaffold(
      appBar: AppBar(
        title: Text('my counter page'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('butona basılma miktarı'),
              Text('$_sayac'),
            ],
          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sayacArttir();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Scaffold orjin(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Counter AppBar'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //bunun sayesinde ortaya geldi
        children: [
          MyNewTextWidget(),
          Text(
            _sayac.toString(),
            style:
                // TextStyle(fontSize: 48,fontWeight: FontWeight.bold),
                Theme.of(context).textTheme.headline1,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('butona tıklandı ve sayac değeri $_sayac');
          sayacArttir();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void sayacArttir() {
    setState(() {
      _sayac++;
    });
  }
}

class MyNewTextWidget extends StatelessWidget {
  const MyNewTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'butona basılma miktarı',
      style: TextStyle(fontSize: 24),
    );
  }
}
