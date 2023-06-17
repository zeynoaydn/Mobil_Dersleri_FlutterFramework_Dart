void main(List<String> args) {
  /* abstract sınıf olduğu için
  VeriTabani db=VeriTabani();
  diyemezsin,nesne oluşturamazsın*/
  VeriTabani veri = OracleDb();
  veri.userSave();
  print(veri);

  userGuncelle(veri);

   VeriTabani veri2 = FirebaseDb();
  veri2.userSave();
  print(veri2);
}

void userGuncelle(VeriTabani veri) {
  veri.userUpdate();
}

abstract class VeriTabani {
  void userSave();
  void userUpdate();
  void userDelete();

}

class OracleDb extends VeriTabani {
  @override
  void userDelete() {
    print("oracle db den user silindi");
  }

  @override
  void userUpdate() {
    print("oracle db den user güncellendi");
  }

  @override
  void userSave() {
    print("oracle db den user kurtarıldı");
  }
}

class FirebaseDb extends VeriTabani {
  @override
  void userDelete() {
    print("firebase db den user silindi");
  }

  @override
  void userUpdate() {
    print("firebase db den user güncellendi");
  }

  @override
  void userSave() {
    print("firebase db den user kurtarıldı");
  }
}