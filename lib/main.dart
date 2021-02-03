import 'HomePage.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dota 2',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MyHomePage(),
    );
  }
}