import 'package:flutter/material.dart';

class detay2 extends StatefulWidget {
   detay2({super.key, required String imgPath});

  var imgPath;//çalıştıramadım
  

  @override
  State<detay2> createState() => _detay2State();
}

class _detay2State extends State<detay2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: 'assets/modelgrid2.jpeg',
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration:
              BoxDecoration(image: DecorationImage(image: AssetImage('assets/modelgrid2.jpeg'),fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
