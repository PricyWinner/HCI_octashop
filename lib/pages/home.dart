part of 'pages.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Octa Shop"),
        ),
        body: HomeCarousel(),
        drawer: Drawer(
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
                    Navigator.pushNamed(context, '/voucher');
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
                    Navigator.pushNamed(context, '/news');
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
                ),
              )
            ],
          ),
        ),
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
      ),
    );
  }
}
