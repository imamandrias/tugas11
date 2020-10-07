import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:playlistyoutube_app/list_video.dart';
import 'package:playlistyoutube_app/mydrawer.dart';

class NasihatPage extends StatefulWidget {
  @override
  _NasihatPageState createState() => _NasihatPageState();
}

class _NasihatPageState extends State<NasihatPage> {
  //Fungsi Dashboard untuk menu Nasihat Ulama
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
        title: Text('Nasihat Ulama'),
        backgroundColor: Colors.cyan,
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        children: [
          myList(Icons.live_tv, 'Nasihat Para Ulama', 0xffed622b,
              'https://kumpulannasehat.herokuapp.com/'),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 130.0),
        ],
      ),
    );
  }
}
