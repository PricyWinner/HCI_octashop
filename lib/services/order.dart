part of 'services.dart';

List<OrderClass> orderDB = [];

void createNewOrder(UserClass currentUser, VoucherClass voucher, int playerID) {
  orderDB.add(OrderClass(orderDB.length, voucher, currentUser, playerID));
}
