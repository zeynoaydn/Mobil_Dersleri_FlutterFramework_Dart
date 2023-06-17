import 'package:flutter/material.dart';
import 'package:kitap_app/bavul.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Kitapları Keşfetmeye Başlayın',
            style: TextStyle(
              color: Colors.black,
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.house_outlined,
                color: Colors.grey,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
        ]),
        body: ListView(
          children: [
            /* */
            Container(
              height: 39,
              margin: EdgeInsets.only(left: 25, right: 25, top: 18),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.1)),
              child: Stack(children: [
                TextField(
                  style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.only(left: 19, right: 50, bottom: 8),
                    border: InputBorder.none,
                    hintText: 'Search book..',
                    hintStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.withOpacity(0.6),
                        fontWeight: FontWeight.w600),
                    icon: Icon(
                      Icons.search_sharp,
                      color: Colors.black,
                    ),
                  ),
                ),
                // SizedBox(width: 134,),
                // Positioned(
                // child: Icon(Icons.search_off),
                // ),
              ]),
            ),
            /* */
            SizedBox(
              height: 10,
            ),
            /* */
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('New Books',
                    style:
                        TextStyle(fontSize: 23, fontWeight: FontWeight.w600)),
              ),
            ),
            /* */
            Container(
              height: 190,
              width: double.infinity,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=>bavul(imgPath: 'assets/images/bavul.jpg'),
                  ));
                },
                child: Hero(
                  tag:'assets/images/bavul.jpg' ,
                  child: ListView(
                    padding: EdgeInsets.all(20),
                    scrollDirection: Axis.horizontal,
                    children: [
                      listeElemani('assets/images/bavul.jpg'),
                      SizedBox(width: 20),
                      listeElemani('assets/images/bilinmeyen.jpg'),
                      SizedBox(width: 20),
                      listeElemani('assets/images/dogu.jpg'),
                      SizedBox(width: 20),
                      listeElemani('assets/images/fil.jpg'),
                      SizedBox(width: 20),
                      listeElemani('assets/images/hayvan.jpg'),
                      SizedBox(width: 20),
                      listeElemani('assets/images/insanciklar.jpg'),
                      SizedBox(width: 20),
                      listeElemani('assets/images/kafka.jpg'),
                      SizedBox(width: 20),
                      listeElemani('assets/images/kkk.jpg'),
                      SizedBox(width: 20),
                      listeElemani('assets/images/kral.jpg'),
                      SizedBox(width: 20),
                      listeElemani('assets/images/kurkmadonna.png'),
                      SizedBox(width: 20),
                      listeElemani('assets/images/simyaci.jpg'),
                      SizedBox(width: 20),
                      listeElemani('assets/images/sir.jpg'),
                      SizedBox(width: 20),
                      listeElemani('assets/images/tedavi.jpg'),
                      SizedBox(width: 20),
                      listeElemani('assets/images/yaban.jpg'),
                      SizedBox(width: 20),
                      listeElemani('assets/images/yasamak.jpg'),
                      SizedBox(width: 20),
                    ],
                  ),
                ),
              ),
            )
            /* */

            /* */

            /* */
          ],
        ));
  }

  listeElemani(String imagePath) {
    return Column(
      children: [
        Container(
          height: 150,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              image: DecorationImage(
                  image: AssetImage(imagePath), fit: BoxFit.cover)),
        )
      ],
    );
  }
}
