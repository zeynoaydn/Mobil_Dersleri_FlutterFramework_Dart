void main(List<String> args) {
  var listem = <String>[];
  var myMap = <String, dynamic>{'yas': 21};
  var mySet = <String>{"zeynep", "mert"};

  var tekSayilar = [1, 3, 5];
  var ciftSayilar = [2, 4, 6];

  var liste1 = [tekSayilar, ciftSayilar];
  print(liste1);

  var liste2 = [...tekSayilar, ...ciftSayilar];
  print(liste2);

  var map1 = <String, dynamic>{'ad': 'zeynep', 'yas': '21'};
  var map2 = <String, dynamic>{'soyad': 'aydın', 'is': 'issiz'};
  var sonMap = {...map1, ...map2};
  print(sonMap);

  var set1 = <String>{"zeynep", "mert"};
  var set2 = <String>{"nezaket", "ali"};
  var sonSet = {...set1, ...set2};
  print(sonSet);
  print(sonSet.length);
}
