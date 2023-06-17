import 'package:flutter/material.dart';

class deneme_1 extends StatelessWidget {
  const deneme_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 210, 138, 199),
      appBar: AppBar(
        title: Text('Başlık'),
      ),
      body: Container(
        child: Row(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Text("hoşgeldin"),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('butona basıldı'),
        child: Icon(Icons.add_circle_rounded),
      ),
      drawer: Drawer(
        width: 150,
        child: Center(
          child: Text('drawer yapısı')),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.airline_seat_flat_angled_rounded), label: 'Item-1'),
          BottomNavigationBarItem(
              icon: Icon(Icons.motion_photos_off), label: 'Item-2'),
        ],
        onTap: (int index) {
          print(index.toString());
        },
      ),
    );
  }
}
