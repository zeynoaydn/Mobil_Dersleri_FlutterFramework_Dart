void main(List<String> args) {
  double doubleort = ortalamBul<double>(2.74, 4);
  print(doubleort);

  double intort = ortalamBul<int>(2, 4);
  print(intort);
}
//num=hem int hemde double ile çalışır
double ortalamBul<T extends num>(T s1, T s2) {
  return (s1 + s2) / 2;
}


