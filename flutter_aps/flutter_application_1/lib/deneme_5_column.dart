import 'package:flutter/material.dart';

class deneme_5_column extends StatelessWidget {
  const deneme_5_column({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hoşgeldin'),
      ),
      body: Container(
        width: 100,
        decoration: const BoxDecoration(color: Colors.green),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.telegram,
              color: Colors.white,
              size: 40,
            ),
            Icon(
              Icons.facebook,
              color: Colors.white,
              size: 40,
            ),
            Icon(
              Icons.whatsapp,
              color: Colors.white,
              size: 40,
            ),
            Icon(
              Icons.reddit,
              color: Colors.white,
              size: 40,
            ),
          ],
        ),
      ),
    );
  }
}
