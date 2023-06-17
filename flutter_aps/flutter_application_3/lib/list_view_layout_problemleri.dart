import 'package:flutter/material.dart';

class ListViewLayoutProblemleri extends StatelessWidget {
  const ListViewLayoutProblemleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview Layout Problemleri'),
      ),
      body: Container(
        //container i sınırlayabilirsin
        //height: 200,
        child:ListView(
          scrollDirection: Axis.horizontal,
          //yatay kaydıralabilir scroll
           
          shrinkWrap: true,
          //içeriği kadar yer tutar
              children: [
                Container(
                  width: 200,
                  color: Colors.orange.shade200,
                ),
                Container(
                  width: 200,
                  color: Colors.orange.shade400,
                ),
                Container(
                  width: 200,
                  color: Colors.orange.shade200,
                ),
                Container(
                  width: 200,
                  color: Colors.orange.shade400,
                ),
              ],
            ),

        decoration: BoxDecoration(
          border: Border.all(width: 4,color: Colors.red)
        ),
      ),
    );
  }

  Column columIcindeListe() {
    return Column(
        children: [
          Text('başladı'),
          Expanded(
            child: ListView(
              // shrinkWrap: true,
              //shrinWrap:true=içindeki çocuklar kadar yer kaplayacak
              children: [
                Container(
                  height: 200,
                  color: Colors.orange.shade200,
                ),
                Container(
                  height: 200,
                  color: Colors.orange.shade400,
                ),
                Container(
                  height: 200,
                  color: Colors.orange.shade200,
                ),
                Container(
                  height: 200,
                  color: Colors.orange.shade400,
                ),
              ],
            ),
          ),
          Text('bitti'),
        ],
      );
  }
}
