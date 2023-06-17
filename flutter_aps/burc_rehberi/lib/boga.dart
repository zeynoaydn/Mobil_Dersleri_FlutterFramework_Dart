import 'package:flutter/material.dart';

class Boga extends StatelessWidget {
  const Boga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Boğa Burcu Özellikleri'),
        ),
        body: ListView(
          children: [
            Image.asset('assets/images/boga.jfif'),
            Text(
                "Boğa'lar hedefleri doğrultusunda ilerlerken, tüm dikkatlerini toplayabilme yeteneklerinin yanında maddecilikleri ile tanınırlar. SAHİP olma onların yaşam gerçekleridir. Bireysel ilişkiler konusunda son derece güvenilir olan Boğa'lar, insanlara yardım etmekten hoşlanırlar. Yaşamları boyunca güven ararlar ve bu yüzden kendilerini riske atmazlar. Amaçladıkları işler konusunda gösterdikleri sabır, bazen diğer kişileri çatlatacak boyutlarda olabilir. Bütün bunlara rağmen çevresi tarafından aranılan, sıcakkanlı insanlardır. Sürekli somut konularla uğraşmayı severler, doğada bulunan olaylardan örneklemelerle işlerini başarılı bir şekilde yürütürler. Bu yüzden ruhsal olarak da doyumlu kişilerdir. Olayları organize ederlerken rahatlıklarını gözetirler ve kendilerinin zevklerine uygun olmasına önem verirler. Yaşamdaki isteklerini elde ettikleri zaman, hiçbir koşul onları başka yönlere çekemez. Parayı rahata ulaşmak için bir araç olarak görürler. Mal ve mülk edinme konusunda beceriklidirler. Finans ve yatırım konuları ilgilerini çeker."),
          ],
        ));
  }
}
