part of 'components.dart';

class HomeCarousel extends StatelessWidget {
  HomeCarousel({Key? key}) : super(key: key);

  final List<Widget> imageSliders = newsDB
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(
                        item.imageURL,
                        fit: BoxFit.cover,
                        width: 500,
                      ),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                        ),
                      ),
                    ],
                  )),
            ),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 0.8,
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayAnimationDuration: Duration(seconds: 1),
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
        initialPage: 0,
      ),
      items: imageSliders,
    );
  }
}








// class HomeCarousel extends StatefulWidget {
//   List<NewsClass> news = newsDB;

//   final List<Widget> imageSliders = news
//     .map((item) => Container(
//           child: Container(
//             margin: EdgeInsets.all(5.0),
//             child: ClipRRect(
//                 borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                 child: Stack(
//                   children: <Widget>[
//                     Image.network(item.,
//                         fit: BoxFit.cover, width: 1000.0),
//                     Positioned(
//                       bottom: 0.0,
//                       left: 0.0,
//                       right: 0.0,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             colors: [
//                               Color.fromARGB(200, 0, 0, 0),
//                               Color.fromARGB(0, 0, 0, 0)
//                             ],
//                             begin: Alignment.bottomCenter,
//                             end: Alignment.topCenter,
//                           ),
//                         ),
//                         padding: EdgeInsets.symmetric(
//                             vertical: 10.0, horizontal: 20.0),
//                       ),
//                     ),
//                   ],
//                 )),
//           ),
//         ))
//     .toList();
//   HomeCarousel({Key? key}) : super(key: key);

//   @override
//   State<HomeCarousel> createState() => _HomeCarouselState();
// }



// class _HomeCarouselState extends State<HomeCarousel> {






//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: CarouselSlider(
//         options: CarouselOptions(
//           autoPlay: true,
//           aspectRatio: 2.0,
//           enlargeCenterPage: true,
//         ),
//         items: imageSliders,
//       ),
//     );
//   }
// }
