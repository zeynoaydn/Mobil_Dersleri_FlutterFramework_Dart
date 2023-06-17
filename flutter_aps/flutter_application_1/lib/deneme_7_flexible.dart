import 'package:flutter/material.dart';
class deneme_7_flexible extends StatelessWidget {
  const deneme_7_flexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('merhaba'),
          backgroundColor: Colors.green,
        ),
        body: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                flex: 23,
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.yellow,
                ),
              ),
              Flexible(
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
              ),
              Flexible(
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.pink,
                ),
              ),
              Flexible(
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                ),
              ),
            ]),
      );
  }
}