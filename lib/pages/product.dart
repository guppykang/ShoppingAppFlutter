import 'package:flutter/material.dart';
import 'dart:async';

class ProductPage extends StatelessWidget {
  final String imageUrl;
  final String title;

  ProductPage(this.imageUrl, this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                Image.asset(imageUrl),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(title),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: RaisedButton(
                    color: Theme.of(context).accentColor,
                    child: Text("Delete"),
                    onPressed: () => Navigator.pop(context, true),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
