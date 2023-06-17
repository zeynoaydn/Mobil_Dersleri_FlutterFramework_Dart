import 'package:flutter/material.dart';
import 'package:moda_app/detay2.dart';
import 'package:moda_app/detay3.dart';

import 'detay.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Moda Uygulaması',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
            color: Colors.grey,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.more, color: Colors.grey), label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.play_arrow,
                color: Colors.black,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.navigation,
                color: Colors.grey,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.supervised_user_circle,
                color: Colors.grey,
              ),
              label: ''),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          /*üst profil*/
          Container(
            height: 200,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: [
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(
                  width: 15,
                ),
                listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(
                  width: 15,
                ),
                listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
                SizedBox(
                  width: 15,
                ),
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(
                  width: 15,
                ),
                listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(
                  width: 15,
                ),
                listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
              ],
            ),
          ),
          /* */

          /* */
          Material(
            borderRadius: BorderRadius.circular(16),
            elevation: 4,
            child: Container(
              height: 460,
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          image: DecorationImage(
                              image: AssetImage('assets/model1.jpeg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 200,
                        child: Column(
                          children: [
                            Text(
                              'Daisy',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '12 dakika önce',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 50),
                      Icon(
                        Icons.more_vert,
                        color: Colors.grey,
                        size: 22,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    style: TextStyle(fontFamily: 'Montserrat'),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => detay1(imgPath:'assets/modelgrid1.jpeg'),
                          )
                          );
                        },
                        child: Hero(
                          tag: 'assets/modelgrid1.jpeg',//sayıda verebilirdin
                          child: Container(
                            width: (MediaQuery.of(context).size.width - 50) / 2,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  image: AssetImage('assets/modelgrid1.jpeg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => detay2(imgPath:'assets/modelgrid2.jpeg'),
                          )
                          );
                        },
                            child: Hero(
                              tag: 'assets/modelgrid2.jpeg',
                              child: Container(
                                width:
                                    (MediaQuery.of(context).size.width - 100) / 2,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: AssetImage('assets/modelgrid2.jpeg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          InkWell(
                            onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => detay3(imgPath:'assets/modelgrid3.jpeg'),
                          )
                          );
                        },
                            child: Hero(
                              tag: 'assets/modelgrid3.jpeg',
                              child: Container(
                                width:
                                    (MediaQuery.of(context).size.width - 100) / 2,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: AssetImage('assets/modelgrid3.jpeg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2)),
                        child: Center(
                            child: Text(
                          'lorem ipsum',
                          style: TextStyle(
                              fontFamily: 'Montserrat', color: Colors.brown),
                        )),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Container(
                        height: 25,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2)),
                        child: Center(
                            child: Text(
                          'lorem',
                          style: TextStyle(
                              fontFamily: 'Montserrat', color: Colors.brown),
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.2),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(Icons.reply,
                              color: Colors.grey.withOpacity(0.2)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '5',
                          style: TextStyle(color: Colors.grey.withOpacity(0.9)),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          child: Icon(Icons.message,
                              color: Colors.grey.withOpacity(0.2)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '5',
                          style: TextStyle(color: Colors.grey.withOpacity(0.9)),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.favorite, color: Colors.red),
                              Text(
                                '23k',
                                style: TextStyle(
                                    color: Colors.grey.withOpacity(0.9)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          /* */
        ],
      ),
    );
  }

  listeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.contain),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Container(
          height: 26,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: Colors.brown),
          child: Center(
              child: Text(
            'Follow',
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 14, color: Colors.white),
          )),
        )
      ],
    );
  }
}
