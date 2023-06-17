void main(List<String> args) {
  final /*List<String>*/ mesajlar = ['a', 'b', 'c'];
  print(mesajlar);

  print(mesajlar[1]);

  mesajlar.add('34');
  print(mesajlar);

  mesajlar.addAll(['s', 'f']);
  print(mesajlar);

  print(mesajlar.length);

  if (mesajlar.contains('s')) {
    print("eleman var");
  } else {
    print("eleman yok");
  }

  mesajlar[0] = 'A';
  print(mesajlar);

  mesajlar.remove('h'); //h olmadığı için çalışmaz
  print(mesajlar);

  mesajlar.remove('f');
  print(mesajlar);

  if (mesajlar.isEmpty) {
    print("liste boş");
  } else {
    print("liste dolu");
  }

  for (var i in mesajlar) {
    print(i);
  }

  mesajlar.add('b');
  print(mesajlar);

  final arkadaslar = {'ali', 'zeynep', 'bihter'};
  print(arkadaslar);

  arkadaslar.add('can');
  print(arkadaslar);
  print(arkadaslar.first);
  print(arkadaslar.length);

  final arkadaslar2 = {'zeynep', 'ali', 'nezaket'};

  print(arkadaslar.intersection(arkadaslar2));

  Map<String, dynamic> etiketler = {
    'arkadaslar': 1,
    'okul': 3,
    'is': 4,
  };
  print(etiketler);

  print(etiketler['okul']);

  print(etiketler.keys);

  etiketler['is'] = '7';
  print(etiketler);

  print("*****");

  for (var i in etiketler.entries) {
    print("key:${i.key} value:${i.value}");
  }
}
