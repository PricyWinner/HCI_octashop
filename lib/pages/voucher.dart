part of 'pages.dart';

class VoucherPage extends StatefulWidget {
  VoucherPage({Key? key}) : super(key: key);

  @override
  State<VoucherPage> createState() => _VoucherPageState();
}

class _VoucherPageState extends State<VoucherPage> {
  List<VoucherClass> vouchers = [];

  Widget getVoucherWidgets(int gameid) {
    List<VoucherClass> vouchers = voucherDB;
    Widget toBeReturned = Column();
    for (var voucher in vouchers) {
      if (voucher.game.id == gameid) {
        // (toBeReturned as Column).children.add(VoucherCard(
        //       voucherData: voucher,
        //     ));
        print(voucher.game.name);
      }
    }
    return toBeReturned;
  }

  String getVoucher(int gameid) {
    List<VoucherClass> vouchers = voucherDB;
    // Widget toBeReturned = Column();
    // for (var voucher in vouchers) {
    //   // if (voucher.game.id == gameid) {
    //     // (toBeReturned as Column).children.add(VoucherCard(
    //     //       voucherData: voucher,
    //     //     ));
    //     print(voucher.game.name);
    //     log(voucher.game.name);
    //     return voucher.game.name;
    //   // }
    // }
    return vouchers.elementAt(4).game.name;
  }

  List<VoucherClass> selectedGameVoucher(int gameid) {
    List<VoucherClass> vouchers = voucherDB;
    List<VoucherClass> selectedVoucher = [];
    for (var voucher in vouchers) {
      if (voucher.game.id == gameid) {
        selectedVoucher.add(voucher);
        print(voucher.name);
      }
    }
    return selectedVoucher;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: "Mobile Legend",
                ),
                Tab(
                  text: 'Free fire',
                ),
                Tab(
                  text: 'Valorant',
                ),
                Tab(
                  text: 'Ragnarok X',
                ),
                Tab(
                  text: 'Genshin Impact',
                ),
              ],
              isScrollable: true,
            ),
            title: const Text('Voucher'),
          ),
          drawer: DrawerComponent(),
          body: TabBarView(
            children: [
              VoucherList(gameid: 0),
              VoucherList(gameid: 1),
              VoucherList(gameid: 2),
              VoucherList(gameid: 3),
              VoucherList(gameid: 4),
            ],
          ),
        ),
      ),
    );
  }
}
