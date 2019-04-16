import 'package:flutter/material.dart';

import './products_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
        accentColor: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('yer mam is fake '),
        ),
        body: Products_Manager(),
      ),
    );
  }
}