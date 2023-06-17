import 'package:flutter/material.dart';

class Koc extends StatelessWidget {
  const Koc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Koç Burcu Özellikleri'),
        ),
        body: ListView(
          children: [
            Image.asset('assets/images/koc.jfif'),
            Text(
                "Koç, Burçlar kuşağının ilk burcudur. Hareketli ve enerjik oluşları ile tanınırlar. Ben egoları çok fazla gelişmiştir. BEN, onların aynası olmuştur adeta. Bu burçta doğanlar çok pratiktirler. Olaylar karşısında coşkularını gizleyemezler. Yaşam yolunda canlılıklarını ve atılganlıklarını yitirmeden heyecanla ilerlerler. Merak ettikleri konularda olabildiğince yaratıcılardır. Amaçları doğrultusunda ilerlerken, kendilerini eylemleri ile kanıtlamak isterler. Eğer Koç'lar girişimde bulunacakları zaman izleyecekleri rotayı ayrıntıları ile planlarsa, enerjik yapılarının da yardımı ile daha da üretken olabilirler. Bencilliklerinden kaynaklanan sabırsızlıkları ve söz dinlemez yaratılışları yüzünden zaman zaman güç durumlara düştükleri de olur. Böyle anlarda başladıkları işlerini sonuçlandırmadan bırakırlar. Konuşmaları abartılıdır, bazen gerçekleri değiştirerek anlatırlar. Kavrama yetenekleri fazla olan Koç'lar yaşam sahnesinin başrolünde olmayı tercih ederler. Aşırı kıskanç ve bağımsızlıklarına düşkün olurlar."),
          ],
        ));
  }
}
