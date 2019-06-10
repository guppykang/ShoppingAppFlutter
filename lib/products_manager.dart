import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class Products_Manager extends StatefulWidget {
  final Map<String, String> startingProduct;

  Products_Manager({this.startingProduct});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<Products_Manager> {
  List<Map<String, String>> _products = [];

  //this function is created whenever we create the product manager state object
  @override
  void initState() {
    super.initState();

    //we can use this keyword widget. It is getting a reference to the current configuration of the Products_Manger state
    if(widget.startingProduct != null){
      _products.add(widget.startingProduct);
    }
     //the property widget is able to access the properties that were cerated in the stateful widget that state is linked to
  }

  void _addProduct(Map<String, String> product) {
    setState(() {
      //set state method will call the build method again after the state is changed in order to make sure all the widgets are correctly updated
      _products.add(product);
    });
  }

  @override
  //this is called whenever we call the setstate function to change the state of the state 
  void didUpdateWidget(Products_Manager oldWidget) {
    super.didUpdateWidget(oldWidget); 
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        //we can pass in functions into a widget that is in another level 
        child: ProductControl(_addProduct),
      ),
      Expanded( child: Products(_products))
    ]);
  }
}
