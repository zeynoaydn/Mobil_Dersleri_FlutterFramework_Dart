import 'package:flutter/material.dart';

class detay1 extends StatefulWidget {
   detay1({super.key, required String imgPath});

  var imgPath;//çalıştıramadım
  

  @override
  State<detay1> createState() => _detay1State();
}

class _detay1State extends State<detay1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack (
        children: [
          Hero(
          tag: 'assets/modelgrid1.jpeg',
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage('assets/modelgrid1.jpeg'),fit: BoxFit.cover)),
          ),
        ),
          Positioned(
          left: 15,
          right: 15,
          bottom: 15,
          child: Container(
            height: 255,
            width: MediaQuery.of(context).size.width-20,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                          image: DecorationImage(image: AssetImage('assets/dress.jpg'),fit: BoxFit.contain),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Lorem Ipsum',style: TextStyle(fontSize: 18,fontFamily: 'Montserrat',fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text('Lorem Dolar',style: TextStyle(fontSize: 16,fontFamily: 'Montserrat',color: Colors.grey),),    
                    SizedBox(height: 10,),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width-180,
                      child: Text('Lorem Ipsum Dolar lorem lorem lorem lorem lorem',style: TextStyle(fontSize: 14,fontFamily: 'Montserrat',color: Colors.grey),)), 
                  ],
                ),
                  ],
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$424',style: TextStyle(fontFamily: 'Montserrat',fontSize: 22),),
                      FloatingActionButton(
                        child: Icon(Icons.arrow_forward_ios,),
                        backgroundColor: Colors.brown,
                        onPressed: () {},),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        ],
      ),
    );
  }
}
