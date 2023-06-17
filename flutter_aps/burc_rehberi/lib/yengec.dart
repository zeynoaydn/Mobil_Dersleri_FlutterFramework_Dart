import 'package:flutter/material.dart';

class Yengec extends StatelessWidget {
  const Yengec({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yengeç Burcu Özellikleri'),
      ),
      body: ListView(
        children: [
          Image.asset('assets/images/yengec2.jfif'),
          Text(" Yaşamlarındaki her konuda aşırı bir şekilde hassas, alıngan ve kuruntulu olan Yengeç'leri tanımlayan sözcük 'Hissederim' dir. Sorumluluk duyguları çok gelişmiştir. Her işte olağanüstü olan ayrıntıcılıkları, işlerinde mükemmeliyetçiliği getirir. Ayni sorumlulukları karşılarındakilerden de beklerler. Yengeç'ler duygusallıkları ve duyarlılıkları ile tanınırlar. Çevresindeki her insandan da ayni hassasiyeti bekledikleri için, kolay geçinilir tipler değildir. İyi günlerinde neşeli, iyi kalpli, yardımsever, düşünceli ve anlayışlıdırlar. Fakat herhangi belirgin bir neden olmadan somurtkan ve alıngan olabilirler. Yakınlarını ve arkadaşlarını çok sevmelerine karşın, bunu pek belli etmezler. Kendilerini herhangi bir şekilde inciten kişileri zor bağışlarlar ve yapılan hareketi asla unutmazlar. Yengeç'ler müziğe ve dinsel konulara karşı ilgilidirler. Sabırlı olan Yengeç'ler tartışmalardan kesinlikle hoşlanmazlar. Duygularını sessiz bir şekilde saklarlar."),
        ],
      )
    );
  }
}