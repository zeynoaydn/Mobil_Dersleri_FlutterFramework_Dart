void main(List<String> args) {}
abstract class Hayvan{

}

abstract class Ucabilenler {
  void fly();
}

abstract class Havlayabilenler {
  void bark();
}

abstract class Kosabilenler {
  void run();
}
/*implement ile sınıfımda birden fazla sınıf çağırabilirim*/

class Kopek extends Hayvan implements Havlayabilenler, Kosabilenler {
  @override
  void bark() {
    print("haylayabilir");
  }

  @override
  void run() {
   print("koşabilir");
  }
}

class Kus extends Hayvan implements  Kosabilenler,Ucabilenler{
  @override
  void fly() {
    print("uçabilir");
  }

  @override
  void run() {
    print("koşabilir");
  }

}

class Insan implements Kosabilenler{
  @override
  void run() {
   print("koşabilir");
  }

}