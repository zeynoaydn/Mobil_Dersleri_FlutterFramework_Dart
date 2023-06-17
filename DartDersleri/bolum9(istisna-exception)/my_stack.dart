class MyStack {
  List _listem = [];

  push(yeniEleman) {
    _listem.add(yeniEleman);
  }

  pop() {
    return _listem.removeLast();
  }
}

class IntMyStack {
  List<int> _listem2 = <int>[];

  void push(int yeniEleman2) {
    _listem2.add(yeniEleman2);
  }

  int pop() {
    return _listem2.removeLast();
  }
}

class StringMyStack {
  List<String> _listem3 = <String>[];

  void push(String yeniEleman3) {
    _listem3.add(yeniEleman3);
  }

  String pop() {
    return _listem3.removeLast();
  }
}

//tek bri veriyle çalışacağımız sınıf yapıyoruz
class GenericStack<T> {
  List<T> _listem4 = <T>[];

  void push(T yeniEleman3) {
    _listem4.add(yeniEleman3);
  }

  T pop() {
    return _listem4.removeLast();
  }
}
