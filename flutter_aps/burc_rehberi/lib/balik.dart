import 'package:flutter/material.dart';

class Balik extends StatelessWidget {
  const Balik({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Balık Burcu Özellikleri'),
        ),
        body: ListView(
          children: [
            Image.asset('assets/images/balık.jfif'),
            Text(
                "Sabır, eli açıklık ve duyarlılık bu burçta doğan kişilerin en önemli nitelikleridir. Büyük bir inandırma yetenekleri vardır. Dürüst, vicdan sahibi, sadık ve uysaldırlar. Her çevreye kolayca uyabilirler. Genellikle hayal dünyasında yaşarlar. Yaşam görüşleri ciddi fakat gerçekçi değildirler. Balık burcu, diğer burçlar arasında dış etkenlerden en çok etkilenen kişilerdir. Düş dünyasında, öylesine mutludur ki, bazen onun aptal olduğunu bile düşünebilirsiniz. Ama, zannettiğinizden daha akıllı ve kurnazdır. Sinirli yapısını gizli bir sakinlikle örterken, herkesin seçtiği özel bir kişi olmanın hayallerini kurarlar. Yaşam onun için ürkütücü ve korkunçtur..Balık burcu insanını dışarıdan gözlemleyenler; duygusal yapısının bir aşk acısına dayanamayacağını zannederler ve kötü haberi hemen vermek istemezler. Aslında, kırılgan görüntüsünün altında güçlü bir kişilik yatar. Göz yaşlarını kısa sürede kurutur ve mendillerini bir kenara atarak, yeni bir yaşamın içinde kendini bulur. Onları teselli edecek o kadar kişi bulunur ki; yeni bir aşk acısı kapısını çalıncaya kadar, hayatını istediği gibi yaşar. Duygusal kırıklıklar pes etmelerine yetmez ve bir sürü yarım kalmış aşkıyla birlikte bir dolu anlatılacak anılarıyla yaşamını tamamlar."),
          ],
        ));
  }
}
