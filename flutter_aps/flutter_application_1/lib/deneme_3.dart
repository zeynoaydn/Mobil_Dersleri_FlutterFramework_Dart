import 'package:flutter/material.dart';

class deneme_3 extends StatelessWidget {
  const deneme_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Color.fromARGB(255, 186, 35, 8),
        title: Text('başlık'),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.rectangle,
            border: Border.all(color: Colors.red,width: 5),
            // borderRadius: BorderRadius.all(Radius.circular(30)),
            boxShadow: [
              BoxShadow(color: Colors.pink,offset:Offset(0,30),blurRadius: 20),
            ]
            ),
        ),
      ),
    );
  }
}
