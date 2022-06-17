part of 'pages.dart';

class VoucherDetailPage extends StatefulWidget {
  final VoucherClass selectedVoucher;
  VoucherDetailPage({Key? key, required this.selectedVoucher})
      : super(key: key);

  @override
  State<VoucherDetailPage> createState() => _VoucherDetailPageState();
}

showAlert(BuildContext context, String errorMessage) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Error'),
        content: Text(errorMessage),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Close'),
            child: const Text('Close'),
          ),
        ],
      );
    },
  );
}

showSuccessAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Success'),
        content: Text('Success'),
        actions: <Widget>[
          TextButton(
            onPressed: () => {
              Navigator.pop(context, 'Close'),
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              ),
            },
            child: const Text('Close'),
          ),
        ],
      );
    },
  );
}

TextEditingController idController = TextEditingController();

class _VoucherDetailPageState extends State<VoucherDetailPage> {
  String _playerID = '';

  void _submit() {
    final playerID = idController.value.text;
    bool success = true;
    print("in submit");
    if (playerID.isEmpty) {
      showAlert(context, 'Player ID cannot be empty');
      success = false;
    }

    // ignore: unnecessary_null_comparison
    if (double.tryParse(playerID) == null) {
      print("not number");
      showAlert(context, 'Player ID is not numeric');
      success = false;
    }
    if (success) {
      showSuccessAlert(context);
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
              Text(
                widget.selectedVoucher.game.name,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(widget.selectedVoucher.name,
                        style: TextStyle(fontSize: 20)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Rp." + widget.selectedVoucher.price.toString(),
                        style: TextStyle(fontSize: 20)),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              TextFormField(
                controller: idController,
                decoration: InputDecoration(
                  labelText: 'Player ID',
                  hintText: 'Enter Player ID',
                ),
                onChanged: (value) => setState(() => _playerID),
              ),
              ElevatedButton(onPressed: _submit, child: Text('Purchase'))
              // StatelessWidgetDialogBox(
              //   playerID: _playerID,
              // ),
            ],
          ),
        ));
  }
}
