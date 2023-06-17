void main(List<String> args) {
  const Student zeynep = Student(23, "zeynep");
  final Student zeynep2 = const Student(23, "zeynep");
  var zeynep3 = const Student(23, "zeynep");
  if (zeynep == zeynep3) {
    print("eşit");
  } else {
    print("eşit değil");
  }
}

class Student {
  final int id; //final ile veriler değiştirilemeyecek
  final String isim;
  const Student(this.id, this.isim);
}
