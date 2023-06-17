import 'package:flutter/material.dart';

class deneme_4_row extends StatelessWidget {
  const deneme_4_row({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar
        :AppBar(
          title:Text('merhaba'),
          backgroundColor: Color.fromARGB(255, 217, 131, 159),),

        body: 
        Container(
          height: 100,
          decoration: const BoxDecoration(color: Colors.green),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            //min olursa içindeki itemler kadar genişler
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.telegram,color: Colors.white,size: 40,),
              Icon(Icons.facebook,color: Colors.white,size: 40,),
              Icon(Icons.whatsapp,color: Colors.white,size: 40,),
              Icon(Icons.reddit,color: Colors.white,size: 40,)],
            ),
            ),
            
            );
  }
}