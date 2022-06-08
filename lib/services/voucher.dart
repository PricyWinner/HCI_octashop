part of 'services.dart';

List<VoucherClass> voucherDB = [];
List<VoucherGameClass> gameDB = [];

void generateDummyVoucher() {
  gameDB.add(VoucherGameClass(0, "Mobile Legend"));
  gameDB.add(VoucherGameClass(1, "Free Fire"));
  gameDB.add(VoucherGameClass(2, "Valorant"));
  gameDB.add(VoucherGameClass(3, "Ragnarok X"));
  gameDB.add(VoucherGameClass(4, "Genshin Impact"));

  voucherDB.add(VoucherClass(0, "10 Currency", gameDB.elementAt(0), 15000));
  voucherDB.add(VoucherClass(1, "50 Currency", gameDB.elementAt(0), 75000));
  voucherDB.add(VoucherClass(2, "100 Currency", gameDB.elementAt(0), 150000));
  voucherDB.add(VoucherClass(3, "10 Currency", gameDB.elementAt(1), 150000));
  voucherDB.add(VoucherClass(4, "50 Currency", gameDB.elementAt(1), 75000));
  voucherDB.add(VoucherClass(5, "100 Currency", gameDB.elementAt(1), 150000));
  voucherDB.add(VoucherClass(6, "10 Currency", gameDB.elementAt(2), 150000));
  voucherDB.add(VoucherClass(7, "50 Currency", gameDB.elementAt(2), 75000));
  voucherDB.add(VoucherClass(8, "100 Currency", gameDB.elementAt(2), 150000));
  voucherDB.add(VoucherClass(9, "10 Currency", gameDB.elementAt(3), 150000));
  voucherDB.add(VoucherClass(10, "50 Currency", gameDB.elementAt(3), 75000));
  voucherDB.add(VoucherClass(11, "100 Currency", gameDB.elementAt(3), 150000));
  voucherDB.add(VoucherClass(12, "10 Currency", gameDB.elementAt(4), 150000));
  voucherDB.add(VoucherClass(13, "50 Currency", gameDB.elementAt(4), 75000));
  voucherDB.add(VoucherClass(14, "100 Currency", gameDB.elementAt(4), 150000));
}

List<VoucherGameClass> listGames() {
  return gameDB;
}

List<VoucherClass> listVouchers() {
  return voucherDB;
}

VoucherClass getVoucherById(int id) {
  return voucherDB.elementAt(id);
}
