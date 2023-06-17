import 'package:flutter/material.dart';

class GridViewKullanimi extends StatelessWidget {
  const GridViewKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return GridViewBuilder();
  }

  GridView basmaOlayi() {
    return GridView.builder(
    itemCount: 100,
    gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemBuilder: (BuildContext context, int index) {
      return GestureDetector(
        child:Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.pink,
            style: BorderStyle.solid,
            width: 4
             ),
             borderRadius: BorderRadius.all(Radius.circular(30)),
             boxShadow:[ BoxShadow(
              color: Color.fromARGB(255, 17, 215, 46),
              offset: Offset(20,10),
              blurRadius: 20,
              spreadRadius:1,
              ),],
          //color: Colors.red[100*((index+1)%8)],
          gradient: LinearGradient(
            colors:[
              Colors.yellow,Colors.blue,
            ],
            begin:Alignment.topCenter,
            end: Alignment.bottomCenter,
            ),
            // image: DecorationImage(image: AssetImage("assets/image/indir.jpg"),
            // fit:BoxFit.fill,
            //  ),
        ),
        margin: EdgeInsets.all(10),
         // color: Colors.red[100*((index+1)%8)],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('merhaba flutter ${index+1}',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.purple,fontSize: 16),
          ),
        ),
        
       ),
       onTap: () => debugPrint("merhaba flutter $index tıklanıldı"), );
    });
  }

  GridView GridViewBuilder() {
    return GridView.builder(
      itemCount: 100,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(7),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Merhaba Flutter ${index+1}',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),),
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.pink.shade300,
            style: BorderStyle.solid,
            width: 4),
            borderRadius: BorderRadius.all((Radius.circular(45)),),
            boxShadow:[
              BoxShadow(color: Color.fromARGB(244, 2, 65, 87),
              offset: Offset(20,10),
              blurRadius: 34,
              spreadRadius: 5),
            ],
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 76, 170, 175),Color.fromARGB(255, 236, 79, 58)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        );
      });
  }

  GridView GridViewExtend() {
    return GridView.extent(
      maxCrossAxisExtent: 100,
      //herbir elemanın genişliği en fazla 100 olacak şekilde sığdır
      primary: false,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20, //sütunların arasındaki boşluk(soldan sağa)
      mainAxisSpacing: 40, //satırların arasınndaki boşluk(yukardan ağağıya)
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
      ],
    );
  }

  GridView GridViewCountRow() {
    return GridView.count(
      crossAxisCount: 6, //satırda kaç  eleman olacağını belirtiyor
      primary: false,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20, //sütunların arasındaki boşluk(soldan sağa)
      mainAxisSpacing: 40, //satırların arasınndaki boşluk(yukardan ağağıya)
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
      ],
    );
  }

  GridView GridViewCountColumn() {
    return GridView.count(
      crossAxisCount: 3, //satırda kaç  eleman olacağını belirtiyor
      primary: false,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20, //sütunların arasındaki boşluk(soldan sağa)
      mainAxisSpacing: 40, //satırların arasındaki boşluk(yukardan ağağıya)
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple.shade300,
          child: Text('merhaba flutter'),
        ),
      ],
    );
  }
}
