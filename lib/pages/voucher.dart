part of 'pages.dart';

class VoucherPage extends StatefulWidget {
  VoucherPage({Key? key}) : super(key: key);

  @override
  State<VoucherPage> createState() => _VoucherPageState();
}

class _VoucherPageState extends State<VoucherPage> {
  Widget getVoucherWidgets(int gameid) {
    List<VoucherClass> vouchers = voucherDB;
    Widget toBeReturned = Column();
    for (var voucher in vouchers) {
      if (voucher.game.id == gameid) {
        (toBeReturned as Column).children.add(VoucherCard(
              voucherData: voucher,
            ));
        print(voucher.game.name);
      }
    }
    return toBeReturned;
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
                  text: "ML",
                ),
                Tab(
                  text: 'VL',
                ),
                Tab(
                  text: 'FF',
                ),
                Tab(
                  text: 'GI',
                ),
                Tab(
                  text: 'RX',
                ),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: getVoucherWidgets(0),
              ),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
