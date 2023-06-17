void main(List<String> args) {
  final liste = [
    {'a', 'b'},
    {'c', 'd'},
    {'e', 'f'}
  ];
  print(liste);

  final ikinciListe = liste[1];
  print(ikinciListe);

  ikinciListe.remove('c');
  print(ikinciListe);

  print(liste);

  
}
