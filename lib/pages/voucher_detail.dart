part of 'pages.dart';

class VoucherDetailPage extends StatefulWidget {
  final VoucherClass selectedVoucher;
  VoucherDetailPage({Key? key, required this.selectedVoucher})
      : super(key: key);

  @override
  State<VoucherDetailPage> createState() => _VoucherDetailPageState();
}

class _VoucherDetailPageState extends State<VoucherDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.selectedVoucher.game.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(widget.selectedVoucher.name),
      ),
      
    );
  }
}
