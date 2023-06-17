void main(List<String> args) {
  /*final ve const immutable(değişmez) kavramlardır
  instace değişkenler sadece final olarak tanımlanır
  const ile tanımlanabilmesi için static const olmalı*/

  // var str = "zeynep";
  // str = "nezaket";
  //yaparak str içeriğini değştirdik

  // final String str2 = "zeynep";
  //str2 = "nezaket"; değişim olmaz hata verir

  // const String str3 = "zeynep";
  //str3 = "nezaket"; değişim olmaz hata verir

  final liste = [1, 2, 3];
  final liste2 = [1, 2, 3];
  if (liste == liste2) {
    print("eşit");
  } else {
    print("eşit değil");
  }
  //liste,liste2 farklı bellek adreslerine kayıtlı
  //o yüzden eşit değil çıktı
  liste.add(8);
  print(liste);

  const liste3 = [1, 2, 3];
  const liste4 = [1, 2, 3];
  if (liste3 == liste4) {
    print("eşit");
  } else {
    print("eşit değil");
  }
  /*consta final gibi veri eklenip çıkarılamaz*/

}
