import 'package:flutter/material.dart';

class Ikizler extends StatelessWidget {
  const Ikizler({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('İkizler Burcu Özellikleri'),
        ),
        body: ListView(
          children: [
            Image.asset('assets/images/ikizler.jfif'),
            Text(
                "İkizler burcu insanları hızlı düşüncelerine uygun çabuk hareket ederler. Ayni anda birkaç işi birden yapabilirler. Onların adapte olamayacakları iş yoktur. Bu yüzden değişik karakterli olmaları ile tanınırlar. Bu yapılarını her zaman görebilmek mümkündür. Son derece neşeli ve mutlu oldukları bir anda, aniden mutsuz olabilirler. Çevreleri tarafından sürekli yanlış anlaşılabilirler. Herhangi bir konuda bilgileri az bile olsa, bunu çok iyi gizlemeyi başarırlar. Aksine; kulaktan dolma duydukları bilgileri öyle ustaca anlatırlar ki, dinleyenler onları o işin uzmanı sanırlar. Pratik zekalarıyla, çekici ve akıllıdırlar. Bu nedenle onları tanımlayan sözcük 'Düşünüyorum' dur. Fakat, bu düşünceleri hep yeni arayışlara doğru yönelmiştir. Bu yüzden uzun soluklu çalışmalar onları yorar. Kendilerini iyi eğitmiş ikizler hoş ve zariflikleri ile yaşamı zevkli kılarlarken, eğitimsiz olanlar da yaşamı o kadar çekilmez hale getirirler. Kendi paralarına karşı tutumlu davranmalarına karşın, başkalarının paralarını kolayca harcayabilirler."),
          ],
        ));
  }
}
