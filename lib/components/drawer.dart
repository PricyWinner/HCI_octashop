part of 'components.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture:
                  Image(image: AssetImage('assets/images/logo.jpg')),
              accountName: Text("Octashop"),
              accountEmail: Text("Email: Octashop.support@gmail.com")),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: ListTile(
              title: Text('Home'),
              trailing: Icon(Icons.home),
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(5)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: ListTile(
              title: Text('Voucher'),
              trailing: Icon(Icons.confirmation_num),
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(5)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VoucherPage(),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: ListTile(
              title: Text('News'),
              trailing: Icon(Icons.feed),
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(5)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsPage(),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: ListTile(
              title: Text('Log Out'),
              trailing: Icon(Icons.logout),
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(5)),
              onTap: () {
                currentUser = null;
                // Navigator.pushAndRemoveUntil(
                //     context,
                //     MaterialPageRoute(
                //         builder: (BuildContext context) => LoginPage()),
                //     ModalRoute.withName('/'));
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => LoginPage()),
                    ModalRoute.withName('/'));
              },
            ),
          )
        ],
      ),
    );
  }
}
