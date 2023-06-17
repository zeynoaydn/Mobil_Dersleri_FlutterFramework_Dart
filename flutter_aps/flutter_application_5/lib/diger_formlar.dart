import 'package:flutter/material.dart';

class DigerFormlar extends StatefulWidget {
  const DigerFormlar({super.key});

  @override
  State<DigerFormlar> createState() => _DigerFormlarState();
}

class _DigerFormlarState extends State<DigerFormlar> {
  bool checkBoxState = false;
  bool checkBoxState2 = false;
  String sehir = '';
  bool switchState = false;
  double slider = 10;
  String secilenMenu = 'Menu 1';
  List<String> sehirler = ["Ankara", "Bursa", "Hatay", "İmzir"];
  String secilenSehir = 'Ankara';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form İşlemleri'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CheckboxListTile(
                  value: checkBoxState,
                  onChanged: (value) {
                    setState(() {
                      checkBoxState = value!;
                    });
                  },
                  activeColor: Colors.purple.shade200,
                  title: Text('CheckBox Title'),
                  subtitle: Text('CheckBox Subtitle'),
                  secondary: Icon(Icons.arrow_forward_ios),
                  //selected=varsayılanı ayarlayabilirsin(ture/false)
                ),
                CheckboxListTile(
                  value: checkBoxState2,
                  onChanged: (value) {
                    setState(() {
                      checkBoxState2 = value!;
                    });
                  },
                  activeColor: Colors.blue.shade200,
                  title: Text('CheckBox Title'),
                  subtitle: Text('CheckBox Subtitle'),
                  secondary: Icon(Icons.add),
                ),
                RadioListTile<String>(
                  value: 'Ankara',
                  groupValue: sehir,
                  onChanged: (value) {
                    setState(() {
                      sehir = value!;
                      debugPrint('$value');
                    });
                  },
                  title: Text('Ankara'),
                  subtitle: Text('Çankaya'),
                ),
                RadioListTile<String>(
                  value: 'Tokat',
                  groupValue: sehir,
                  onChanged: (value) {
                    setState(() {
                      sehir = value!;
                      debugPrint('$value');
                    });
                  },
                  title: Text('Tokat'),
                  subtitle: Text('Reşadiye'),
                ),
                RadioListTile(
                  value: 'Karaman',
                  groupValue: sehir,
                  onChanged: (value) {
                    setState(() {
                      sehir = value!;
                    });
                  },
                  title: Text('Karaman'),
                  subtitle: Text('Merkez'),
                ),
                SwitchListTile(
                  value: switchState,
                  onChanged: (value) {
                    setState(() {
                      switchState = value;
                    });
                  },
                  title: Text('Switch Title'),
                  subtitle: Text('Switch Subtitle'),
                  secondary: Icon(Icons.alarm),
                ),
                Text('Değeri Slider dan Seç'),
                Slider(
                  value: slider,
                  onChanged: (value) {
                    setState(() {
                      slider = value;
                    });
                  },
                  min: 10,
                  max: 50,
                  divisions: 10,
                  label: slider.toString(),
                ),
                DropdownButton<String>(
                  items: [
                    DropdownMenuItem<String>(
                      child: Text('Menu 1'),
                      value: 'Menu 1',
                    ),
                    DropdownMenuItem<String>(
                        child: Text('Menu 2'), value: 'Menu 2'),
                    DropdownMenuItem<String>(
                        child: Text('Menu 3'), value: 'Menu 3'),
                  ],
                  onChanged: (value) {
                    setState(() {
                      secilenMenu = value!;
                    });
                  },
                  hint: Text('Seçiniz'),
                  elevation: 5,
                  icon: Icon(Icons.menu),
                  value: null,
                ),
                DropdownButton<String>(
                  items: sehirler.map(
                    (oAnkiSehir) {
                      return DropdownMenuItem<String>(
                          child: Text(oAnkiSehir), value: oAnkiSehir);
                    },
                  ).toList(),
                  onChanged: (value) {
                    setState(() {
                      secilenSehir = value!;
                    });
                  },
                  value: secilenSehir,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
