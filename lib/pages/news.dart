part of 'pages.dart';

class NewsPage extends StatefulWidget {
  NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class NewsItem {
  String newsTitle;
  String newsDetail;
  String path;
  NewsItem(this.newsTitle, this.newsDetail, this.path);
}

final List<NewsItem> news = [
  NewsItem('Valorant SALE', 'Diamond 50% off!!',
      'https://i.pinimg.com/564x/30/4e/ba/304ebaa7114b0e34536e8510f760d22a.jpg'),
  NewsItem('Apex 2022 SALE', 'APEX 2022 sale starts now',
      'https://i.pinimg.com/564x/ba/98/06/ba9806f986e8d092f3722360de76a10e.jpg'),
  NewsItem('MOLE 2022 INFO!', 'Mobile Legend new Player',
      'https://i.pinimg.com/564x/64/6b/3f/646b3fa4aa48d3eae37d401cde9d2b7d.jpg')
];

final List<Widget> card = news
    .map((i) => Container(
          child: Container(
            margin: EdgeInsets.all(15),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              child: Stack(
                children: <Widget>[
                  Image.network(
                    i.path,
                    fit: BoxFit.cover,
                    width: 500,
                  ),
                  Positioned(
                    right: 0,
                    left: 0,
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[Color(0xff232F34), Color(0xff4A6572)],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                      child: Column(
                        children: [
                          Text(
                            i.newsTitle,
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            i.newsDetail,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // ),
                  ),
                ],
              ),
            ),
          ),
        ))
    .toList();

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('News and Promotion'),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
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
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                ),
              )
            ],
          ),
        ),
        body: CarouselSlider(
          options: CarouselOptions(
            height: 450,
            viewportFraction: 0.8,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayAnimationDuration: Duration(seconds: 1),
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            initialPage: 0,
          ),
          items: card,
        ),
      ),
    );
  }
}
