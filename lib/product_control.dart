import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;
  final Function increment;
  final Function getNum;

  ProductControl(this.addProduct, this.increment, this.getNum);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
          color: Theme.of(context).primaryColor,
          child: Text("Add Product test"),
          onPressed: () {
            addProduct({'title' : 'Jian Yang ' + getNum(), 'image' : 'assets/jianyang.jpeg'});
            increment();
          },
        );
  }

}