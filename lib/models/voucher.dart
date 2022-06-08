part of 'models.dart';

class VoucherClass {
  int id;
  String name;
  VoucherGameClass game;
  int price;
  VoucherClass(this.id, this.name, this.game, this.price);
}

class VoucherGameClass {
  int id;
  String name;
  VoucherGameClass(this.id, this.name);
}
