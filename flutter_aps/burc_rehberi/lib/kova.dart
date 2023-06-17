import 'package:flutter/material.dart';

class Kova extends StatelessWidget {
  const Kova({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Kova Burcu Özellikleri'),
        ),
        body: ListView(
          children: [
            Image.asset('assets/images/kova.jfif'),
            Text(
                "Hayal güçleri sınırsız olmakla birlikte, düşünceleri bulundukları anın ötesinde, akılcı ve sezgiseldir. Kova 'lar dik kafalıdırlar. Kendilerini dinleyenlerin ne demek istediklerini anlamadıklarını sanırlar. Kovaları tanımlayan sözcük 'Biliyorum' dur. Kova burcu insanları sevecen tavırları ile tanınırlar. Bu kişiler bencil değildirler. Irk, cinsiyet ve sosyal durumuna bakmaksızın, herkesin ayni olanaklara sahip olmasını isterler. Modern görünüşlerine karşın, inatçı ve sabit fikirli olurlar. Onlara yaklaşmak çok zordur, çünkü ne kadar dostça davranırlarsa davransınlar, arada her zaman bir mesafe bırakırlar. Kişisel özgürlükleri onlar için o denli önemlidir ki, bu yüzden en yakın ilişkilerini kesip atabileceği gibi, yine özgürlükleri adına her türlü özveride bulunurlar. Bu yüzden Kovalara aile yaşamı biraz zor gelir. Çoğu zaman yeni bir şeyler keşfetmek için uğraşıda bulunurlar. Belli ilkeleri sonuna dek savunmaları onları hiç rahatsız etmez."),
          ],
        ));
  }
}
