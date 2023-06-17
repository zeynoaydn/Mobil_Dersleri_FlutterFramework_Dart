import 'package:flutter/material.dart';

class OrangePage extends StatelessWidget {
  const OrangePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orange Page'),
        backgroundColor: Colors.orange.shade300,
      ),
      body: Center(
          child: Column(
        children: [
          Text(
            'Orange Page',
            style: TextStyle(fontSize: 26),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
            child: Text('En Başa Geri Dön'),
            style: ElevatedButton.styleFrom(primary: Colors.purple),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Mora Geri Dön'),
            style: ElevatedButton.styleFrom(primary: Colors.orange),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .popUntil((route) => route.settings.name == '/');
            },
            child: Text('En Başa Dön'),
            style: ElevatedButton.styleFrom(primary: Colors.green),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  '/bluePage', (route) => route.isFirst);
            },
            child: Text('Maviyi Ana Sayfadan Sonra Ekle'),
            style: ElevatedButton.styleFrom(primary: Colors.red),
          ),
        ],
      )),
    );
  }
}
