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

        drawer: DrawerComponent(),
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
      ),
    );
  }
}
