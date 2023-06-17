import 'package:flutter/material.dart';

class SoruDeneme extends StatelessWidget {
  const SoruDeneme({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter denemesi'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            kutuOlustur(text: 'U', renk: Colors.pink),
            kutuOlustur(text: 'M', renk: Colors.pink),
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            kutuOlustur(text: 'U', renk: Colors.pink),
            kutuOlustur(text: 'T', renk: Colors.pink),
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            kutuOlustur(text: 'U', renk: Colors.pink),
            kutuOlustur(text: 'M', renk: Colors.pink),
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            kutuOlustur(text: 'U', renk: Colors.pink),
            kutuOlustur(text: 'T', renk: Colors.pink),
          ],),
        ],),
     
      ),
    );
  }

  Row rowtocolumn() {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              kutuOlustur(text: 'D', renk: Colors.red),
              kutuOlustur(text: 'E', renk: Colors.red),
              kutuOlustur(text: 'R', renk: Colors.red),
              kutuOlustur(text: 'S', renk: Colors.red),
              kutuOlustur(text: 'L', renk: Colors.red),
              kutuOlustur(text: 'E', renk: Colors.red),
              kutuOlustur(text: 'R', renk: Colors.red),
              kutuOlustur(text: 'İ', renk: Colors.red),
               ],
          ),
          kutuOlustur(text: 'A', renk: Colors.red),
          kutuOlustur(text: 'R', renk: Colors.red),
          kutuOlustur(text: 'T', renk: Colors.red),
          
        ],
      );
  }

  Column columntorow() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          Row(
            children: [
              kutuOlustur( renk: Colors.red, text: 'D'),
              kutuOlustur( renk: Colors.red, text: 'A'),
              kutuOlustur( renk: Colors.red, text: 'R'),
              kutuOlustur( renk: Colors.red, text: 'T'),
              ],
          ),
          kutuOlustur(text: 'E', renk:Colors.red),
          kutuOlustur(text: 'R', renk:Colors.red),
          kutuOlustur(text: 'S', renk:Colors.red),
          kutuOlustur(text: 'L', renk:Colors.red),
          kutuOlustur(text: 'E', renk:Colors.red),
          kutuOlustur(text: 'R', renk:Colors.red),
          kutuOlustur(text: 'İ', renk:Colors.red),
        ],
      );
  }

  Container kutuOlustur(
    {required String text, required Color renk, double boyut = 50}) {
    return Container(
      width: boyut,
      height: boyut,
      child: Text(text),
      color: renk,
      alignment: Alignment.center,
    );
  }
}
