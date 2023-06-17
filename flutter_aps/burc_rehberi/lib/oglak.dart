import 'package:flutter/material.dart';

class Oglak extends StatelessWidget {
  const Oglak({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Oğlak Burcu Özellikleri'),
        ),
        body: ListView(
          children: [
            Image.asset('assets/images/oglak.jfif'),
            Text(
                "Geleceği ayrıntılı biçimde planlamaya çalışan Oğlak'lar bu özellikleri nedeniyle sık sık kuruntulara kapılarak, depresyona girerler. İşleri ile aşırı meşgul olduklarından, insanlarla zor ilişki kurarlar. Fakat, hiçbir zaman kendilerini yalnız hissetmezler. Bu nedenle onları tanımlayan sözcük 'Kullanırım' dır. Oğlaklar ciddilikleri, tutuculukları ve güçlü iradeleri ile tanımlanırlar. Çalışkanlıkları ile kolaylıkla başkalarının saygısını kazanırlar. Gerçek bir Oğlak'ın iki temel özelliği vardır. Güvenilirlik ve dürüstlük. Çok gelişmiş bir görev duyguları vardır. Bazen başkalarının başarısızlıklarını abartırlar. Oğlaklar arkadaşları ile ilgili çok iyi sırdaş olurlar, para konusunda dikkatli olmalarına rağmen, eli açık insanlardır. Geleneklere bağlı kişiler olduklarından, duygusal özgürlüğü anlamakta güçlük çekerler. Bu nedenle kendilerinden yaşça küçük kişilerle bazen sürtüşmeleri olur. Sürekli somut konularla uğraşmayı severler, doğada bulunan olaylardan örneklemelerle işlerini başarılı bir şekilde yürütürler. Bu yüzden ruhsal olarak da doyumlu kişilerdir. Olayları organize ederlerken rahatlıklarını gözetirler ve kendilerinin zevklerine uygun olmasına önem verirler. Bu özellikleri evlerine de yansır."),
          ],
        ));
  }
}
