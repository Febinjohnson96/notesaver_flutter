import 'package:flutter/material.dart';
import './notemanager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('NoteSaver'),
        ),
        body: NoteManager(),
      ),
    );
  }
}
