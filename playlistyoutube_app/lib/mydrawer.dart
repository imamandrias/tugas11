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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.menu),
                  title: Text('Home', style: TextStyle(fontSize: 18.0),),
                  onTap: (){},
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.menu),
                  title: Text('Aqidah & Manhaj', style: TextStyle(fontSize: 18.0),),
                  onTap: ()=>Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context)=> AqidahPage())
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.menu),
                  title: Text('Fiqih', style: TextStyle(fontSize: 18.0),),
                  onTap: ()=>Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context)=> FiqihPage())
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.menu),
                  title: Text('Murotal', style: TextStyle(fontSize: 18.0),),
                  onTap: ()=>Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context)=> MurotalPage())
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.menu),
                  title: Text('Nasihat Ulama', style: TextStyle(fontSize: 18.0),),
                  onTap: ()=>Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context)=> NasihatPage())
                  ),
                ),
              ),
              Divider(),

            ],
          ),
        ),
      ),
    );
  }
}
