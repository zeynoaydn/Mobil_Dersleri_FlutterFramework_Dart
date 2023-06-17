import 'package:flutter/material.dart';


class Zeynep extends StatefulWidget {
  const Zeynep({super.key});

  @override
  State<Zeynep> createState() => _ZeynepState();
}
 
class _ZeynepState extends State<Zeynep> {
  int yas = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('Zeynep Widgetı Basıldı');
    return Scaffold(
      appBar: AppBar(title: Text('Benim Başlığım')),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (() {
            setState(() {
              yas = yas + 1;
            });
          })),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.pink,
          child: Column(children: [
            Text('Benim adım gamze ve ben ${yas} yaşındayım'),
            Umut(),
            Can(),
            Atiye(),
          ]),
        ),
      ),
    );
  }
}




class Umut extends StatefulWidget {
  const Umut({super.key});
  @override
  State<Umut> createState() => _UmutState();
}
 
class _UmutState extends State<Umut> {
  int umutunYasi = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('Umut Widgetı Basıldı');
    return Container(
      height: 200,
      width: 200,
      color: Colors.amber.shade400,
      child: Column(
        children: [
          Text('Umut State : ${umutunYasi} '),
          TextButton(
              onPressed: () {
                setState(() {
                  umutunYasi++;
                });
              },
              child: Text('Buton'))
        ],
      ),
    );
  }
}




class Can extends StatefulWidget {
  const Can({super.key});

  @override
  State<Can> createState() => _CanState();
}
 
class _CanState extends State<Can> {
  bool bekarMi = false;

  @override
  Widget build(BuildContext context) {
    debugPrint('Can Widgetı basıldı');
    return Container(
      child: Row(
        children: [
          Checkbox(
              value: bekarMi,
              onChanged: (e) {
                setState(() {
                  bekarMi = !bekarMi;
                });
                debugPrint(e.toString());
              }),
          Text(bekarMi ? 'Evli' : 'Bekar'),
        ],
      ),
      width: 400,
      height: 100,
      color: Colors.green,
    );
  }
}




class Atiye extends StatefulWidget {
  const Atiye({super.key});

  @override
  State<Atiye> createState() => _AtiyeState();
}
 
class _AtiyeState extends State<Atiye> {
  String kelime = 'Kelime Girin';
  late TextEditingController _atiyeController;
  @override
  void initState() {
    super.initState();
    _atiyeController =TextEditingController(text: kelime);
  }
  @override
  Widget build(BuildContext context) {
    debugPrint('Atiye Widgetı Basıldı');
    return Container(
      color: Colors.tealAccent,
      width: 300,
      height: 500,
      child: Column(
        children: [
          TextField(
            controller: _atiyeController,
            onChanged: ((value) {
              setState(() {
                kelime = value.toString();
              });
            }),
          ),
          Text('Yazılan Kelime: ${kelime}'),
        ],
      ),
    );
  }
}