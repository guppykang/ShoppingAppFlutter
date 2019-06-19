import 'package:flutter/material.dart';

import './pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;

  Products([this.products = const []]);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(alignment: MainAxisAlignment.center, children: <Widget>[
            FlatButton(
              child: Text('Details'),
              //transition to the new product page
              onPressed: () => Navigator.push<bool>(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ProductPage(
                        products[index]['image'], products[index]['title']),
                  )).then((bool value ) {
                      print(value);
                  }),
            )
          ])
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //this list view bulder will call the buildProductItem function the numbwer of times that is specified in the item Count
    return products.length > 0
        ? ListView.builder(
            itemBuilder: _buildProductItem,
            itemCount: products.length,
          )
        : Center(child: Text('no products found. Please add some'));
  }
}
