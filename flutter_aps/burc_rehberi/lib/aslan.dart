import 'package:flutter/material.dart';

class Aslan extends StatelessWidget {
  const Aslan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Aslan Burcu Özellikleri'),
        ),
        body: ListView(
          children: [
            Image.asset('assets/images/aslan.jfif'),
            Text(
                "Aslan kraldır, önderdir. Başkalarının yaşantılarını da onlar adına düzenlemek isterler. Her şeye karışırlar, kibirlidirler. Bu nedenle onları tanımlayan sözcük 'Yönetirim' dir. Yaşam sahnesinde her zaman parlayarak, odak noktası olmak isterler. Organizasyon güçleri çok fazladır. İsteklerini başkalarına kabul ettirmek, onlar için yaşamlarının 'olmazsa olmaz' şartıdır. İyi zamanlarında etkileyici, güler yüzlü, başkalarına yardım etmeyi seven ve bunu kendine görev sayan Aslan'lar sevimli ve iyimser kişilerdir. Ona karşı hatalı davransanız bile, size olgun bir şekilde tepki verir. Fakat; Sabrı taştıktan sonra, dürüst ve mert, gerektiğinde sert bir şekilde tavır gösterir. Zor günlerinde şansları onlara her zaman yardım eder. Yönetici gezegenleri Güneş onları en karanlık günlerinde aydınlığa çıkarır. Eğitimsiz ve gelişmemiş Aslan tipleri çekilmez olurlar. Her konuda sahip olduklarından daha fazlası varmış gibi davranırlar."),
          ],
        ));
  }
}
