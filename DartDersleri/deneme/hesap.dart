void main(List<String> args) {
  // double sonuc = hesapMakinesi(2, 4,"çıkarma");
  // print(sonuc);
  // double? sonuc = hesapMakinesi(34, 1,"çıkarma");
  // print(sonuc);
  print(hesapMakinesi({"sayi1": 5, "sayi2": 56, "islem": "toplama"}));
}

// void hesapMakinesi(double sayi1, double sayi2, [String islem = "+"]) {
//   double sayac = 0;
//   if (islem == "+") {
//     sayac = sayi1 + sayi2;
//     print(sayac);
//   } else if (islem == "-") {
//     sayac = sayi1 - sayi2;
//     print(sayac);
//   } else if (islem == "*") {
//     sayac = sayi1 * sayi2;
//     print(sayac);
//   } else if (islem == "/") {
//     sayac = sayi1 / sayi2;
//     print(sayac);
//   }
// }
// double? hesapMakinesi(double sayi1, double sayi2, [String islem = "toplama"]) {
//   double? sayac = 0;
//   switch (islem) {
//     case "toplama":
//       sayac = sayi1 + sayi2;
//       break;
//     case "çıkarma":
//       sayac = sayi1 - sayi2;
//       break;
//     case "çarpma":
//       sayac = sayi1 * sayi2;
//       break;
//     case "bölme":
//       sayac = sayi1 / sayi2;
//       break;

//     default:
//       sayac = null;
//   }
//   // if (islem == "toplama") {
//   //   sayac = sayi1 + sayi2;
//   // } else if (islem == "çıkarma") {
//   //   sayac = sayi1 - sayi2;
//   // } else if (islem == "çarpma") {
//   //   sayac = sayi1 * sayi2;
//   // } else if (islem == "bölme") {
//   //   sayac = sayi1 / sayi2;
//   // }
//   return sayac;
// }
num? hesapMakinesi(Map<String, dynamic> datas) {
  num? sayac = 0;
  num sayi1 = datas["sayi1"]!;
  num sayi2 = datas["sayi2"]!;
  dynamic islem = datas["islem"];

  switch (islem) {
    case "toplama":
      sayac = sayi1 + sayi2;
      break;
    case "çıkarma":
      sayac = sayi1 - sayi2;
      break;
    case "çarpma":
      sayac = sayi1 * sayi2;
      break;
    case "bölme":
      sayac = sayi1 / sayi2;
      break;

    default:
      sayac = null;
  }
  return sayac;
}
