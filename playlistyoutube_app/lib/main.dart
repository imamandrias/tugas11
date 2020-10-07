import 'package:flutter/material.dart';
import 'package:playlistyoutube_app/mydrawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube API',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Taklim Youtube'),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/book.png'),
                fit: BoxFit.cover
            )
        ),
        child: Center(
          child: Text('Taklim Yuk', style: TextStyle(
              fontSize: 30.0,
              fontFamily: 'Merienda',
              color: Colors.redAccent
          ),),
        ),
      ),
    );
  }
}

