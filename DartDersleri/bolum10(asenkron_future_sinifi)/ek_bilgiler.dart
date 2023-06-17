void main(List<String> args) {
  print("program başlasın");
  Future.delayed(Duration(seconds: 2), () {
    print("2 saniyelik işlem");
  });
  print("program bitti");
}
