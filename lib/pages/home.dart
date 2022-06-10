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
          body: SingleChildScrollView(
            child: Column(
              children: [
                // Text(${_LoginPageState._username}),
                Image(image: AssetImage('assets/images/logo.jpg'), height: 100),
                // SizedBox(height: 10),
                HomeCarousel(),
                // SizedBox(height: 30),
                Text('Octashop',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Text(
                    '    octashop is a shop based on Indonesia, '
                    'we sell top up for game such as, Valorant, Mobile Legends, Apex Legends, '
                    'PUBG, League of Legends, and many other games. We provide you a great deal '
                    'of price for each game, enjoy your experience.',
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 8.0)),
                    Icon(Icons.location_on),
                    Text('  Octashop')
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 8.0)),
                    Icon(Icons.phone),
                    Text('  00000000000')
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 8.0)),
                    Icon(Icons.link),
                    Text('  www.octashop.com')
                  ],
                )
              ],
            ),
          ),
          drawer: DrawerComponent()
          // currentIndex: _selectedIndex,
          // selectedItemColor: Colors.amber[800],
          // onTap: _onItemTapped,
          ),
    );
  }
}
