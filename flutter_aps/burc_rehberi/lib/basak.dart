import 'package:flutter/material.dart';

class Basak extends StatelessWidget {
  const Basak({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Başak Burcu Özellikleri'),
        ),
        body: ListView(
          children: [
            Image.asset('assets/images/başak.jfif'),
            Text(
                "Yönetici gezegeninizden dolayı hep bilgiyi ararlar. Zekalarını kendilerine yardımcı olan bir hizmetçi gibi görürler. Bu nedenle Başak burcunu tanımlayan sözcük 'İncelerim “ dir. Başak'lar çalışkan ve pratik insanlar olup, yaşamlarındaki en önemli konu İş' tir. Güvendikleri kişilere yardım etmeyi sevmelerine rağmen, inanmadıkları ve tembel olduklarını bildikleri kişilere karşı soğuk davranırlar. Yaşamları boyunca dinlenmeden çalışırlar. Onların dinlenme biçimi bile başkalarına yorucu gelebilir. Başak'ların yaşamda ayrıntılar arasında boğulma riskleri hep vardır. Böyle anlarda bile, kendi yöntemleri ile yaptıkları işlerde gelişigüzel şeyler bulunabileceğini kabul etmezler. Başaklar, genellikle kendilerini hiç kimseye kullandırtmazlar, sınırlarını belirleyerek 'hayır' demesini bilirler. Tutumlulukları bazen pintilik derecesindedir. İçli-dışlı olmayı sevmedikleri için, soğuk ve mesafeli bir görünüşleri vardır."),
          ],
        ));
  }
}
