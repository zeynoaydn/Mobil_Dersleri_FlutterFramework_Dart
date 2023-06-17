// ignore: file_names
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

const String getAllPersonURL = 'http://127.0.0.1:8000/api/person/1';

class LaravelApi extends StatelessWidget {
  const LaravelApi({super.key});

  @override
  Widget build(BuildContext context) {
    return LaravelApiStateful();
  }
}

class LaravelApiStateful extends StatefulWidget {
  const LaravelApiStateful({super.key});

  @override
  State<LaravelApiStateful> createState() => _LaravelApiStatefulState();
}

class _LaravelApiStatefulState extends State<LaravelApiStateful> {
  /* Stateler */

  bool myState = false;
  Map<String, dynamic> myData = {
    'ad': 'ad bekleniyor',
    'soyad': 'soyad bekleniyor',
  };
  List<Map<String, dynamic>> myDatas = [];
  /* Stateler */

  Future getRandomJoke() async {
    try {
      var response = await Dio().get(getAllPersonURL);
      debugPrint('response.data');
      if (response.statusCode == 200) {
        setState(() {
          myData['ad'] = response.data['data']['ad'];
          myData['soyad'] = response.data['data']['soyad'];
        });
      }
    } on DioError catch (e) {
      debugPrint(e.toString());
      return {'message': 'Error2'};
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: (() {
            getRandomJoke();
            debugPrint('basıldı');
          }),
          child: const Text('verileri getir'),
        ),
        Column(
          children: [
            Text(myState ? myData['ad'] : 'ad yükleniyor'),
            Text(myState ? myData['soyad'] : 'soyad yükleniyor'),
            const Divider(
              color: Colors.red,
              thickness: 10,
              height: 25,
            ),
            Text(myData['ad']),
            Text(myData['soyad']),
          ],
        )
      ],
    );
  }
}
