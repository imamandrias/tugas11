import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:playlistyoutube_app/mydrawer.dart';

import '../list_video.dart';

class AqidahPage extends StatefulWidget {
  @override
  _AqidahPageState createState() => _AqidahPageState();
}

class _AqidahPageState extends State<AqidahPage> {
  //Fungsi Dashboard untuk menu Aqidah dan Manhaj
  Material myList(IconData iconData, String heading, int warna, String link) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      borderRadius: BorderRadius.circular(24.0),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => ListVideo(
              title: heading,
              url: link,
            ),
          ));
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Tulisan sub judulnya
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        heading,
                        style: TextStyle(color: new Color(warna), fontSize: 20.0),
                      ),
                    ),
                    //Icon Youtube
                    Material(
                      color: Color(warna),
                      borderRadius: BorderRadius.circular(24.0),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                            iconData,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Aqidah & Manhaj'),
        backgroundColor: Colors.cyan,
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        children: [
          myList(Icons.live_tv, 'Keutamaan Islam', 0xffed622b,
              'https://keutamaanislam.herokuapp.com/'),
          myList(Icons.live_tv, 'Makna La ilaha illallah', 0xff26cb3c,
              'https://taklimyoutube.herokuapp.com/'),
          myList(Icons.live_tv, 'Mengenal Jalan Salaf', 0xfff4c83f,
              'https://taklimyou2.herokuapp.com/'),
          myList(Icons.live_tv, '4 Kaidah Dalam Beragama', 0xff3399fe,
              'https://empatkaidahberislam.herokuapp.com/'),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 130.0),
          StaggeredTile.extent(2, 130.0),
          StaggeredTile.extent(2, 130.0),
          StaggeredTile.extent(2, 150.0),
        ],
      ),
    );
  }
}
