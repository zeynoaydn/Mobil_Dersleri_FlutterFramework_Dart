import 'package:flutter/material.dart';

class PurplePage extends StatelessWidget {
  const PurplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Purple Page'),
        backgroundColor: Colors.purple.shade300,
      ),
      body: Center(
          child: Column(
        children: [
          Text('Purple Page',style: TextStyle(fontSize: 26),),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/orangePage');
              },
              child: Text('Turuncu Sayfaya Git'),
              style: ElevatedButton.styleFrom(primary: Colors.orange.shade300),)
        ],
      )),
    );
  }
}
