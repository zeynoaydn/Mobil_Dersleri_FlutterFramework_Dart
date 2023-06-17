import 'package:flutter/material.dart';

class Terazi extends StatelessWidget {
  const Terazi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Terazi Burcu Özellikleri'),
        ),
        body: ListView(
          children: [
            Image.asset('assets/images/terazi.jfif'),
            Text(
                "Terazi burcu olan kişiler genellikle cazibeli ve çekici kişilerdir. Herkes tarafından çekici ve büyüleyici bulunurlar. Keyifli ve enerji tavırları ile ön plana çıkan terazi burcu olan kişiler çevresindeki kişiler tarafından ilgi görürler. Tartışmaktan kaçınmayan terazi burçları haklarını savunmaktan kaçınmazlar. Mantıklı davranmaktan hoşlanan terazi burçları genel olarak doğru kararlar almaktan hoşlanır. Aynı zamanda mücadeleyi seven terazi burçları uyumlu bir kişiliğe sahiplerdir."),
          ],
        ));
  }
}
