import 'package:flutter/material.dart';

class MurotalPage extends StatefulWidget {
  @override
  _MurotalPageState createState() => _MurotalPageState();
}

class _MurotalPageState extends State<MurotalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Murotal'),
        backgroundColor: Colors.cyan,
      ),
    );
  }
}
