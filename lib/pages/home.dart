import 'package:flutter/material.dart';

import '../products_manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('yer mam is fake '),
        ),
        body: Products_Manager(),
      );
  }

}