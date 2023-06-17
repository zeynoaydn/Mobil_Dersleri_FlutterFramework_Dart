import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  const DropDownButtonKullanimi({super.key});

  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  String? _secilenSehir = null;
  // String? _secilenSehir = 'Ankara';

  List<String> _tumSehirler = ['tokat', 'mersin', 'çanakkale', 'adana'];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        //hintin kullanılması için _secilenSehir=null olması gerekiyor
        hint: Text('şehir seçiniz:'),
        icon: Icon(Icons.arrow_downward),
        underline: Container(
          height: 3,
          color: Colors.purple,
        ),
        style: TextStyle(
            color: Colors.red, fontSize: 15, fontWeight: FontWeight.bold),

        // items: [
        //   DropdownMenuItem(
        //     child: Text('Ankara Şehri'),
        //     value: 'Ankara',
        //   ),
        //   DropdownMenuItem(
        //     child: Text('Bursa Şehri'),
        //     value: 'Bursa',
        //   ),
        //   DropdownMenuItem(
        //     child: Text('Kütahya Şehri'),
        //     value: 'Kütahya',
        //   ),
        // ],

        items: _tumSehirler
            .map(
              (String oankiSehir) => DropdownMenuItem(
                child: Text(oankiSehir),
                value: oankiSehir,
              ),
            )
            .toList(),

        value: _secilenSehir,

        //bunu yazmazsan sistem çalışmıyor
        onChanged: (String? yeni) {
          setState(() {
            _secilenSehir = yeni;
          });
        },
      ),
    );
  }
}
