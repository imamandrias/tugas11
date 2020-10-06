import 'package:flutter/material.dart';

class NasihatPage extends StatefulWidget {
  @override
  _NasihatPageState createState() => _NasihatPageState();
}

class _NasihatPageState extends State<NasihatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nasihat Ulama'),
        backgroundColor: Colors.cyan,
      ),
    );
  }
}
