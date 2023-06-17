import 'package:flutter/material.dart';

class Akrep extends StatelessWidget {
  const Akrep({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Akrep Burcu Özellikleri'),
        ),
        body: ListView(
          children: [
            Image.asset('assets/images/akrep.png'),
            Text(
                "Akrepler kadar yaşamda tutkuyla yaşayan az insan vardır. Bu nedenle onları simgeleyen sözcük 'Arzuluyorum' dur. Hiçbir şeyi yarım bırakmazlar. Akreplerin güçleri gözlerinden okunur. Mimiklerini kontrol altında tutsalar bile, bakışları ile sevgilerini ya da nefretlerini aktarabilirler. Duygularına kapılırlarsa, tehlikeli olabilirler. Akrep'ler ukala ve kendini beğenmiş insanları sevmezler, onları aşağılayarak hadlerini bildirirler. Kendi bildiklerini okuyarak, uzlaşmaya yanaşmazlar. Aşırı bir şekilde kuşkuculardır, kolay inanmazlar ama inandıkları bir konuyu da sonuna kadar inatla savunurlar. Çalışmalarında sabır ve özenle çalışırlarken, gösterişten uzak bir şekilde işlerini yaparlar. Kendilerini yetiştirmemiş Akrep'ler, yaşamın basitliklerine yatkınlıkları ile kendi kendilerinin yok oluşlarına neden olurlar. Cinsellik yaşamlarında önemli bir yer tutar. Ölümü yeni bir başlangıç olarak kabul ettiklerinden, ölümden korkmazlar.."),
          ],
        ));
  }
}
