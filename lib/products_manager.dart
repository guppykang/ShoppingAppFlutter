import 'package:flutter/material.dart';

import './products.dart';

class Products_Manager extends StatefulWidget {
  final String startingProduct;

  Products_Manager({this.startingProduct = "sweets tester"});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<Products_Manager> {
  List<String> _products = [];

  //this function is created whenever we create the product manager state object
  @override
  void initState() {
    super.initState();

    _products.add(widget
        .startingProduct); //the property widget is able to access the properties that were cerated in the stateful widget that state is linked to
  }

  @override
  void didUpdateWidget(Products_Manager oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
          child: Text("Add Product"),
          onPressed: () {
            setState(() {
              //set state method will call the build method again after the state is changed in order to make sure all the widgets are correctly updated
              _products.add("hi mom");
            });
          },
        ),
      ),
      Products(_products)
    ]);
  }
}
