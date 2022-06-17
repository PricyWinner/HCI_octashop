part of 'components.dart';

class VoucherList extends StatefulWidget {
  final int gameid;
  VoucherList({Key? key, required this.gameid}) : super(key: key);

  @override
  State<VoucherList> createState() => _VoucherListState();
}

class _VoucherListState extends State<VoucherList> {
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
    return ListView.builder(
        itemCount: selectedGameVoucher(widget.gameid).length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 6,
            margin: EdgeInsets.all(10),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              leading: Image(
                image: AssetImage(selectedGameVoucher(widget.gameid)
                    .elementAt(index)
                    .game
                    .image),
                width: 50,
              ),
              trailing: Text(
                "Order",
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
              title: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 4.0, 0, 1.0),
                    child: Text(
                      selectedGameVoucher(widget.gameid)
                          .elementAt(index)
                          .name
                          .toString(),
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Text("Rp." +
                      selectedGameVoucher(widget.gameid)
                          .elementAt(index)
                          .price
                          .toString())
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              subtitle: Text(selectedGameVoucher(widget.gameid)
                  .elementAt(index)
                  .game
                  .name),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VoucherDetailPage(
                        selectedVoucher: selectedGameVoucher(widget.gameid)
                            .elementAt(index)),
                  ),
                );
              },
            ),
          );
        });
  }
}
