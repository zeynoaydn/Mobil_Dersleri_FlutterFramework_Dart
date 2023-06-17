void main(List<String> args) {
  String notDegeri = "BB";

  switch (notDegeri) {
    case "AA":
      print("notun 90-100 aralığında");
      break;

    case "BB":
      print("notun 70-90 aralığında");
      break;

    case "CC":
      print("notun 50-70 aralığında");
      break;

    case "DD":
      print("notun 40-50 aralığında");
      break;

    case "F":
      print("kaldın hayırlı olsuun");
      break;

    default:
      {
        print("yanlış değer girdin");
      }
  }

  int yas = 414;
  switch (yas) {
    case 18:
      print("yaşın 18");
      break;

    case 21:
      print("yaşın 21");
      break;

    case 40:
      print("yaşın 40");
      break;

    default:
      {
        print("başka değer gir");
      }
  }

  int sayi = 33;
  int bolum = (sayi / 10).toInt();

  switch (bolum) {
    case 1:
      print("sayı 10 dan büyük");
      break;
    case 0:
      print("sayı 10 dan küçük");
      break;
    case 2:
      print("sayı 20 den büyük");
      break;
    case 3:
      print("sayı 30 dan büyük");
      break;
    default:
      {
        break;
      }
  }
}
