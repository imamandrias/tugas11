import 'package:flutter/material.dart';
import 'package:playlistyoutube_app/screen/aqidah.dart';
import 'package:playlistyoutube_app/screen/fiqih.dart';
import 'package:playlistyoutube_app/screen/murotal.dart';
import 'package:playlistyoutube_app/screen/nasihat.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                    Colors.cyan,
                    Colors.cyanAccent
                  ])
                ),
                  child: Container(
                      child: Column(
                        children: [
                          Material(
                            borderRadius: BorderRadius.all(Radius.circular(40.0)),
                            elevation: 10,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Image.asset('images/book.png', width: 80, height: 80,),
                            ),
                          ),
                          Text('Taklim Youtube', style: TextStyle(color: Colors.white, fontSize: 24.0),)
                        ],
                      )
                  )
              ),
              CustomListTile(Icons.menu, 'Aqidah & Manhaj',  ()=>Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context)=> AqidahPage())
              )),
              CustomListTile(Icons.menu, 'Fiqih',  ()=>Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context)=> MurotalPage())
              )),
              CustomListTile(Icons.menu, 'Murotal',  ()=>Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context)=> FiqihPage())
              )),
              CustomListTile(Icons.menu, 'Nasihat Ulama',  ()=>Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context)=> NasihatPage())
              )),
            ],
          ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String judul;
  Function onTap;
  CustomListTile(this.icon, this.judul, this.onTap);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade400))
        ),
        child: InkWell(
          splashColor: Colors.cyanAccent,
          onTap:onTap,
          child: Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(judul, style: TextStyle(fontSize: 16.0),),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

