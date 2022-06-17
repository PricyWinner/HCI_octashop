part of 'pages.dart';

class VoucherDetailPage extends StatefulWidget {
  final VoucherClass selectedVoucher;
  VoucherDetailPage({Key? key, required this.selectedVoucher})
      : super(key: key);

  @override
  State<VoucherDetailPage> createState() => _VoucherDetailPageState();
}

showAlert(BuildContext context, String errorMessage) {
  Widget okButton = TextButton(
    child: Text("Ok"),
    onPressed: () => Navigator.of(context).pop(),
  );

  AlertDialog alert = AlertDialog(
    title: Text("Error"),
    content: Text(errorMessage),
    actions: [
      okButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

TextEditingController idController = TextEditingController();

class _VoucherDetailPageState extends State<VoucherDetailPage> {
  var _playerID = '';

  void _submit() {
    final playerID = idController.value.text;

    if (playerID.isEmpty) {
      showAlert(context, 'Player ID cannot be empty');
    }

    if (double.tryParse(playerID) != null) {
      showAlert(context, 'Player ID is not numeric');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.selectedVoucher.game.name),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                image: AssetImage(widget.selectedVoucher.game.image),
                height: 300,
              ),
              Text(widget.selectedVoucher.name),
              TextFormField(
                controller: idController,
                decoration: InputDecoration(
                  labelText: 'Player ID',
                  hintText: 'Enter Player ID',
                ),
                onChanged: (value) => setState(() => _playerID),
              ),
              ElevatedButton(onPressed: _submit, child: Text('Purchase'))
            ],
          ),
        ));
  }
}
