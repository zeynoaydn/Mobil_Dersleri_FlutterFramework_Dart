void main(List<String> args) {
  var liste = [1, 2, 3];
  var liste2 = [4, 5, 6];

  print("liste:$liste");
  print("liste2:$liste2");

  liste = liste2;

  print("sonrası:");

  print("liste:$liste");
  print("liste2:$liste2");

  liste[1] = 10;

  print("liste:$liste");
  print("liste2:$liste2");

  int a = 5;
  int b = 3;

  String s = 'merhaba';
  final s2 = s.replaceFirst('er', 'to');

  print(s);
  print(s2);
}
