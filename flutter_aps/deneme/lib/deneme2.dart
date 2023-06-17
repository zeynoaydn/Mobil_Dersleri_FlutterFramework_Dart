import 'package:flutter/material.dart';

// import './eskiler/eskiler.dart';
// void main(List<String> args) {
//   runApp(Gamze());
// }

class Gamze extends StatelessWidget {
  const Gamze({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('Gamze Widgetı Basıldı');
    return MaterialApp(
      home: Scaffold(
        body: Umut(),
      ),
    );
  }
}

class Zeynep extends StatefulWidget {
  const Zeynep({super.key});

  @override
  State<Zeynep> createState() => _ZeynepState();
}

class _ZeynepState extends State<Zeynep> {
  int sayi = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 200,
      color: Colors.amber,
      child: Column(children: [
        ElevatedButton(
            onPressed: () => setState(() {
                  sayi++;
                }),
            child: Icon(Icons.add)),
        Text("benim uğurlu sayım ${sayi}"),
      ]),
    );
  }
}

class Umut extends StatefulWidget {
  const Umut({super.key});

  @override
  State<Umut> createState() => _UmutState();
}

class _UmutState extends State<Umut> {
  bool ehliyet = false;
  bool askerlik = true;
  bool para = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Checkbox(
              value: ehliyet,
              onChanged: (e) {
                setState(() {
                  ehliyet = !ehliyet;
                });
              }),
          Checkbox(
              value: askerlik,
              onChanged: (e) {
                setState(() {
                  askerlik = !askerlik;
                });
              }),
          Checkbox(
              value: para,
              onChanged: (e) {
                setState(() {
                  para = !para;
                });
              }),
              Text(
                askerlik & para & ehliyet ? 'Bu Adamı Kaçırma' :
                askerlik & para ? 'Evlenilir ' :    
                askerlik & ehliyet ? 'Evlenilir ' :    
                ehliyet & para ? 'Evlenilir ' :
                askerlik ? 'Eh İşte' :    
                ehliyet ? 'Eh İşte' :    
                para ? 'Eh İşte' :
                'Kaç Kurtul'    
            ),
        ],
      ),
    );
  }
}