import 'package:flutter/material.dart';

class CardveListTileKullanimi extends StatelessWidget {
  const CardveListTileKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('card ve list tile kullanımı'),
      ),
      body: Center(
        child: scroll_singleChild(),
      ),
    );
  }

  ListView scroll_listView() {
    return ListView(
      // reverse: true, 
      //tersine çevirir
      children: [
        Column(
          children: [
            tekListeElamani(),
            tekListeElamani(),
            tekListeElamani(),
            tekListeElamani(),
            tekListeElamani(),
            tekListeElamani(),
            tekListeElamani(),
          ],
        ),
        Text('selam'),
        ElevatedButton(onPressed: () {}, child: Text('buton')),
      ],
    );
  }

  SingleChildScrollView scroll_singleChild() {
    return SingleChildScrollView(
      child: Column(
        children: [
          tekListeElamani(),
          tekListeElamani(),
          tekListeElamani(),
          tekListeElamani(),
          tekListeElamani(),
          tekListeElamani(),
          tekListeElamani(),
          tekListeElamani(),
        ],
      ),
    );
  }

  Center mainCard() {
    return Center(
      //center i ctrl+. + column yaparsan card yukarı taşınır
      child: Card(
        color: Colors.blue,
        shadowColor: Colors.purple,
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ListTile(
          title: Text('başlık',style: TextStyle(color: Colors.white),),
          subtitle: Text('alt başlık'),
          leading: Icon(Icons.add),
        ),
      ),

    );
  }

  Column tekListeElamani() {
    return Column(
      children: [
        Card(
          color: Colors.purple.shade100,
          shadowColor: Colors.blue,
          elevation: 12,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
          child: ListTile(
            // leading: Icon(Icons.add),
            leading: CircleAvatar(
                child: Icon(Icons.add),
                backgroundColor: Color.fromARGB(255, 219, 17, 226)),
            title: Text('başlık kısmı'),
            subtitle: Text('alt başlık kısmı'),
            trailing: Icon(Icons.real_estate_agent),
          ),
        ),
        Divider(
          color: Colors.red,
          thickness: 5,
          height: 50,
          indent: 25, //soldan olan boşluk
          endIndent: 56, //sağdan olan boşluk
        ),
      ],
    );
  }
}
