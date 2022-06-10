import 'package:flutter/material.dart';
import 'pages/pages.dart';
import 'services/services.dart';
import 'models/models.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get selectedVoucher => null;

  @override
  Widget build(BuildContext context) {
    generateDummyVoucher();
    return MaterialApp(initialRoute: '/login', routes: {
      '/': (context) => HomePage(),
      '/login': (context) => LoginPage(),
      '/news': (context) => NewsPage(),
      '/voucher': (context) => VoucherPage(),
      '/voucherDetail': (context) => VoucherDetailPage(selectedVoucher: selectedVoucher),
    });
  }
}
