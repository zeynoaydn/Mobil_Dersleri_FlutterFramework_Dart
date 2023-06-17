import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

const String url = 'https://official-joke-api.appspot.com/random_joke';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: MyStatefull(),
      ),
    );
  }
}

class MyStatefull extends StatefulWidget {
  const MyStatefull({super.key});

  @override
  State<MyStatefull> createState() => _MyStatefullState();
}

class _MyStatefullState extends State<MyStatefull> {
  /* Stateler */

  bool myState = false;
  Map<String, dynamic> myData = {
    'id': 'id bekleniyor',
    'type': 'type bekleniyor',
    'setup': 'setup bekleniyor',
    'punchline': 'punchline bekleniyor',
  };
  List<Map<String, dynamic>> myDatas = [];
  /* Stateler */

  Future getRandomJoke() async {
    try {
      var response = await Dio().get(url);
      if (response.statusCode == 200) {
        setState(() {
          myData['id'] = response.data['id'];
          myData['type'] = response.data['type'];
          myData['setup'] = response.data['setup'];
          myData['punchline'] = response.data['punchline'];
        });
      }
    } on DioError catch (e) {
      return {'message': 'Error2'};
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: getRandomJoke,
          child: Text('verileri getir'),
        ),
        Column(
          children: [
            Text(myState ? myData['id'].toString() : 'id yükleniyor'),
            Text(myState ? myData['type'] : 'type yükleniyor'),
            Text(myState ? myData['setup'] : 'setup yükleniyor'),
            Text(myState ? myData['punchline'] : 'puncline yükleniyor'),
            Divider(
              color: Colors.red,
              thickness: 10,
              height: 25,
            ),
            Text(myData['id'].toString()),
            Text(myData['type']),
            Text(myData['setup']),
            Text(myData['punchline']),
          ],
        )
      ],
    );
  }
}
