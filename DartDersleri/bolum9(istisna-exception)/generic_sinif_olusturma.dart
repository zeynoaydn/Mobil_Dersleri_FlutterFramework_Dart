import 'my_stack.dart';

void main(List<String> args) {
  MyStack myStack = MyStack();
  myStack.push(4);
  myStack.push("zeyzey");
  myStack.push(true);

  print(myStack.pop()); //en son elemanı silip yazdırıyoruz
  print(myStack.pop());
  print(myStack.pop());

  print("********");

  IntMyStack intMyStack = IntMyStack();
  intMyStack.push(23);
  intMyStack.push(32);
  print(intMyStack.pop());
  print(intMyStack.pop());

  print("********");

  StringMyStack stringMyStack = StringMyStack();
  stringMyStack.push("zeyzey");
  stringMyStack.push("mert");
  print(stringMyStack.pop());
  print(stringMyStack.pop());

  print("********");

  GenericStack/*<int>*/ genericStack = GenericStack();
  genericStack.push(3);
  genericStack.push("zey");
  print(genericStack.pop());
  print(genericStack.pop());
}
