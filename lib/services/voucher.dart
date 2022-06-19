part of 'services.dart';

List<VoucherClass> voucherDB = [];
List<VoucherGameClass> gameDB = [];

void generateDummyVoucher() {
  gameDB.add(VoucherGameClass(0, "Mobile Legend", "assets/images/logo_ml.jpg"));
  gameDB.add(VoucherGameClass(1, "Free Fire", "assets/images/logo_ff.jpg"));
  gameDB.add(VoucherGameClass(2, "Valorant", "assets/images/logo_valo.jpg"));
  gameDB.add(VoucherGameClass(3, "Ragnarok X", "assets/images/logo_rx.jpg"));
  gameDB.add(VoucherGameClass(4, "Genshin Impact", "assets/images/logo_genshin.jpg"));

  voucherDB.add(VoucherClass(0, "50 Diamond", gameDB.elementAt(0), 20000));
  voucherDB.add(VoucherClass(1, "200 Diamond", gameDB.elementAt(0), 68000));
  voucherDB.add(VoucherClass(2, "700 Diamond", gameDB.elementAt(0), 240000));

  voucherDB.add(VoucherClass(3, "12 Diamond", gameDB.elementAt(1), 2000));
  voucherDB.add(VoucherClass(4, "50 Diamond", gameDB.elementAt(1), 9000));
  voucherDB.add(VoucherClass(5, "100 Diamond", gameDB.elementAt(1), 20000));

  voucherDB.add(VoucherClass(6, "15 VP", gameDB.elementAt(2), 15000));
  voucherDB.add(VoucherClass(7, "50 VP", gameDB.elementAt(2), 75000));
  voucherDB.add(VoucherClass(8, "100 VP", gameDB.elementAt(2), 150000));

  voucherDB.add(VoucherClass(9, "2600 Diamond", gameDB.elementAt(3), 80000));
  voucherDB.add(VoucherClass(10, "5400 Diamond", gameDB.elementAt(3), 160000));
  voucherDB.add(VoucherClass(11, "11000 Diamond", gameDB.elementAt(3), 330000));

  voucherDB.add(VoucherClass(12, "60 Crystals", gameDB.elementAt(4), 20000));
  voucherDB.add(VoucherClass(13, "300 Crystals", gameDB.elementAt(4), 75000));
  voucherDB.add(VoucherClass(14, "1000 Crystals", gameDB.elementAt(4), 250000));
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
