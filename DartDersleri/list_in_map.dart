void main(List<String> args) {
  List<dynamic> kisiler1 = [
    {'ad': 'zeynep', 'yas': 21},
    {'ad': 'bihter', 'yas': 8},
    {'ad': 'gamze', 'yas': 23},
    {'ad': 'umut', 'yas': 24},
    {'ad': 'yağmur', 'yas': 15},
  ];
  List<Map<String, dynamic>> kisiler2 = [
    {'ad': 'zeynep', 'yas': 21},
    {'ad': 'bihter', 'yas': 8},
    {'ad': 'gamze', 'yas': 23},
    {'ad': 'umut', 'yas': 24},
    {'ad': 'yağmur', 'yas': 15},
  ];
  List isimler = kisiler2.map((kisi) => (kisi['ad'])).toList();
  print(isimler);
   
}
