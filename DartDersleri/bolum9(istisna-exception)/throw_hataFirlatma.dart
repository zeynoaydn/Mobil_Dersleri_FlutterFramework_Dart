import 'dart:math';

void main(List<String> args) {
  try {
    double deger = kareKokunuAl(29);
    print("deger: ${deger.toStringAsExponential(2)}");
    //toStringAsExponential(2)=virgülden sonra 2 sayı göster}
  } catch (e) {
    print("hatamız : $e");
  }
}

double kareKokunuAl(int i) {
  if (i < 0) {
    throw FormatException("sayı negatif olamaz");
    //burası çalışırsa(hata çıkarsa) aşağıdaki kodları okummaz
  } else
    return sqrt(i);
}
