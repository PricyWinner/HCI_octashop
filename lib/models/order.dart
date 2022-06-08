part of 'models.dart';

class OrderClass {
  int id;
  VoucherClass voucher;
  UserClass user;
  int playerID;
  OrderClass(this.id, this.voucher, this.user, this.playerID);
}
