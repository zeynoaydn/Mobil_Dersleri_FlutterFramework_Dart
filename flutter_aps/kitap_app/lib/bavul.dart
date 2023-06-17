import 'package:flutter/material.dart';

class bavul extends StatefulWidget {
   bavul({super.key, required String imgPath});

  @override
  State<bavul> createState() => _bavulState();
}

class _bavulState extends State<bavul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
      tag: 'assets/images/bavul.jpg',
      child: Column(
        children: [
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 250,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: AssetImage('assets/images/bavul.jpg'),fit: BoxFit.contain)),
                ),
            ],
          ),
          Card(
            child: ListView(
              children: [
                Container(
                  child: Text("Başımı göğe kaldırıyorum, Şimal Yıldızı’nı arıyor gözlerim. O kayıp. Bense birilerinin giderken ardında bıraktığı çığlık gibi hayattayım.Romanlarıyla okuru renkli yolculuklara çıkaran Nermin Yıldırım, bu defa el ele tutuşan öykülerden oluşan büyüleyici bir dünya kuruyor. Çocukluk düşleri, gençlik hevesleri, ihtiyarlık özlemleri, gidenler, kalanlar, bekleyenler, arayanlar, en karanlık dehlizlerde bile bir umut ışığı bulanlar, düşmemek için birbirine tutunanlar, her şeye rağmen hayata inananlar, bu buruk ama görkemli şölende bir araya geliyor.Bavula Sığmayan görünenin ötesine geçip insana ve yaşadıklarımıza farklı perspektiflerden bakmamızı sağlayan geniş bir panorama sunuyor bizlere. Nermin Yıldırım’ın duyarlı bakışı, etkileyici diliyle dokuduğu derinlikli hikâyeler, yüreklere dokunurken, tekrar tekrar okuma isteği yaratacak, uzun süre hafızalardan çıkmayacak."),
                )
              ],
            ),
          ),
        ],
      )
        ),
      //   width: 100,
      //   height: 150,
      //   decoration:
       //      BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/bavul.jpg'),fit: BoxFit.fill)),
    );
  }
}
