import 'package:flutter/material.dart';
class BluePage extends StatelessWidget {
  const BluePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blue Page'),
        backgroundColor: Colors.blue.shade300,
      ),
      body: Center(
        child: Text('Blue Page',
        style: TextStyle(fontSize: 24),),
      ),
    );
  }
}