part of 'services.dart';

List<NewsClass> newsDB = [];

void generateDummyNews(){
  newsDB.add(NewsClass(0, 'https://i.imgur.com/o4mo0PV.jpeg','Game potentially heading to PS5 and Xbox Series X|S' , 'New Platform'));
  newsDB.add(NewsClass(1, 'https://i.imgur.com/IJRTw6M.jpeg','new changes to jett, fade, and chamber' , 'New Patch'));
  newsDB.add(NewsClass(2, 'https://i.imgur.com/hbRQChv.jpeg','kode redeem FF Free Fire' , 'Free Fire'));
}