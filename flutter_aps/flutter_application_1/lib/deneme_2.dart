import 'package:flutter/material.dart';

class deneme_2 extends StatelessWidget {
  const deneme_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 100,
        height: 100,
        color: Colors.white,
        alignment: Alignment.center,
        child: const Text('selam dünya'),
      ),
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: const Text('tema örneği'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() => print('tıklandı')),
        child: Icon(Icons.unpublished),
      ),
    );
    ;
  }
}
