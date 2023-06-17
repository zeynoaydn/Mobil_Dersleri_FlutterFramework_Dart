void main(List<String> args) {
  int? a; //nullable
  a = null;
  print("a:$a");

  /*liste null olabilir diyorsak List<String
  >?*/
  List<String>? nullOlabilecekStringListesi;

  /*listenin bazı elemanları null olabilir diyorsak
  List<String?> yazarız*/
  List<String?> nullOlabilecekStringleriTutanListe = ["zeynep", null, "aydın"];

  print(nullOlabilecekStringListesi);
  print(nullOlabilecekStringleriTutanListe);

  /* !=null olabilir ama değil*/
  

  
}
