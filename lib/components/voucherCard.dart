part of 'components.dart';

class VoucherCard extends StatefulWidget {
  final VoucherClass voucherData;
  VoucherCard({Key? key, required this.voucherData}) : super(key: key);

  @override
  State<VoucherCard> createState() => _VoucherCardState();
}

class _VoucherCardState extends State<VoucherCard> {
  Color borderColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5 - 8,
      height: MediaQuery.of(context).size.width * 0.25,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: borderColor,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              debugPrint('Card tapped.');
              setState(() {
                borderColor = Colors.orange;
              });
            },
            child: Text(widget.voucherData.name),
          ),
        ),
      ),
    );
  }
}
