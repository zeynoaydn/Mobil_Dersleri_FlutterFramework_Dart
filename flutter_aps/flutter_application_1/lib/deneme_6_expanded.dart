import 'package:flutter/material.dart';
class deneme_6_expanded extends StatelessWidget {
  const deneme_6_expanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('expanded widget'),
          backgroundColor: Colors.green,
        ),
        body: Row(
          children: [
            Expanded(
              child: Container(
              height: 75,
              color: Colors.yellow,),
              ),
              Expanded(
                child: Container(
              height: 75,
              color: Colors.red,),
              ),
              Expanded(
                child: Container(
              height: 75,
              color: Color.fromARGB(255, 88, 255, 59),),
              ),
              Expanded(
                flex: 2,
                child: Container(
              height: 75,
              color: Color.fromARGB(255, 59, 72, 255),),
              ),
              Expanded(
                child: Container(
              height: 75,
              color: Color.fromARGB(255, 255, 59, 226),),
              )
          ],
        ),
      );
  }
}