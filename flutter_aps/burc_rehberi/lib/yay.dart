import 'package:flutter/material.dart';

class Yay extends StatelessWidget {
  const Yay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Yay Burcu Özellikleri'),
        ),
        body: ListView(
          children: [
            Image.asset('assets/images/yay.jfif'),
            Text(
                "Hava grubuna ait Terazi burçları nazik, güler yüzlü ve güzelliklerine düşkün olmalarıyla bulundukları ortamda dikkatleri çekerler. Her zaman pozitif enerji saçan bu burç, hayatın güzelliklerine kendini adamıştır. Onun için her şeyin estetik bir yanı olmalıdır. Venüs’ün yönetiminde oldukları için hem kadınlarında hem erkeklerinde tarifi olmayan bir çekicilik vardır. Nedenini bilemediğiniz bir şekilde Terazi burcunun sizi mıknatıs gibi kendisine çektiğini hissedebilirsiniz. Hayatlarında hep bir denge arayışı vardır. Her şey onlar için eşit seviyede olmalıdır. Belli bir duygu veya madde başka bir şeyin önüne geçmemelidir. Hava grubu olan bu burç dengesi bozulduğunda kararsızlıklar da yaşamaya başlayacaktır. Hoşgörülü ve adildir. Eşitlik duygusuna önem verir. Kimseye ayrımcılık yapmak istemez. Haksızlıklar karşısında tahammülü yoktur. Sosyal bir bireydir. Dostlarıyla beraber oldukça enerjisi de artar. Eğlenmek, hayatın güzel tarafını görmek öncelikleridir. Keyifli bir hayata düşkünlükleri bazen iş hayatını bırakmalarına ya da tembel olmalarına sebep olabilir. Bu burcun bir diğer özelliği de ilişkileri ve evlilikleri temsil etmesidir. İkili ilişkiler denildiğinde Terazi burcu sözü devralır. Hem duygusal hem iş ilişkisinde kibardır. Kurduğu iletişim sayesinde karşı tarafı etkiler. Sevgiye önem verir. İlişkilerin ve sevginin temsili bu burç bazen duygularını frenlemekte zorluklar çekebilir. Güzel olan her şey gibi sanata olan düşkünlükleri de oldukça fazladır."),
          ],
        ));
  }
}
