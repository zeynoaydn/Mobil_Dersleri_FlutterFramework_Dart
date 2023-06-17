import 'package:flutter/material.dart';

class GlobalKeyKullanimi extends StatelessWidget {
  GlobalKeyKullanimi({super.key});
  final sayacWidgetKey = GlobalKey<_SayacWidgetState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Global Key Kullanimi'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Butona Basılma Miktarı',
                style: TextStyle(fontSize: 24),
              ),
              SayacWidget(
                key: sayacWidgetKey,
              ),

            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            sayacWidgetKey.currentState!.arttir();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class SayacWidget extends StatefulWidget {
  SayacWidget({super.key});
  @override
  State<SayacWidget> createState() => _SayacWidgetState();
}

class _SayacWidgetState extends State<SayacWidget> {
  int _sayac = 0;
  void arttir() {
    setState(() {
      _sayac++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _sayac.toString(),
      style: Theme.of(context).textTheme.headline1,
    );
  }
}
