import 'package:flutter/material.dart';

class detay3 extends StatefulWidget {
   detay3({super.key, required String imgPath});

  var imgPath;//çalıştıramadım
  

  @override
  State<detay3> createState() => _detay3tate();
}

class _detay3tate extends State<detay3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: 'assets/modelgrid3.jpeg',
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration:
              BoxDecoration(image: DecorationImage(image: AssetImage('assets/modelgrid3.jpeg'),fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
