import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:playlistyoutube_app/mydrawer.dart';
import 'package:http/http.dart' as http;

class ListVideo extends StatefulWidget {
  final String title;
  final String url;

  ListVideo({this.title, this.url});

  @override
  _ListVideoState createState() => _ListVideoState();
}

class _ListVideoState extends State<ListVideo> {
  //Method menampilkan list video
  Future<List> getPlayList() async {
    final response = await http.get(widget.url);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.cyan,
      ),
      body: FutureBuilder<List>(
          future: getPlayList(),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);
            return snapshot.hasData ? PlayList(snapshot.data) : Center(
              child: CircularProgressIndicator(),);
          }
      ),
    );
  }
}

class PlayList extends StatelessWidget {
  final List list;

  PlayList(this.list);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, index){
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => VideoPlayer("https://youtube.com/embed/${list[index]['contentDetails']['videoId']}")
                  ));
                },
                child: Container(
                  height: 230,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(list [index]['snippet']['thumbnails']['high']['url'])
                    )
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Text(list [index]['snippet']['title']),
              ),
              Divider(),
            ],
          ),
        );
      },
    );
  }
}

//class berfungsi sebagai pembuka link videonya
class VideoPlayer extends StatelessWidget {
  final String url;
  VideoPlayer(this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: WebviewScaffold(
          url: url,
        ),
      ),
    );
  }
}

